#!/usr/bin/env python3
import rospy
from std_msgs.msg import String
import cv2 as cv
import time
import numpy as np


rospy.init_node("LaneDetection_node")
rospy.loginfo ("Lane detectio node has been Started !")
pub = rospy.Publisher('command', String, queue_size=10)

def canny(image):
    gray_img = cv.cvtColor(image, cv.COLOR_RGB2GRAY)
    blur_img = cv.GaussianBlur(gray_img, (1, 1), 0)
    canny_img = cv.Canny(blur_img, 50, 200, None, 3)
    return canny_img
def line_detection (masked_img):
    lines_list = []
    lines = cv.HoughLinesP(
        masked_img,  # Input edge image
        1,  # Distance resolution in pixels
        np.pi / 180,  # Angle resolution in radians
        threshold=50,  # Min number of votes for valid line
        minLineLength=30,  # Min allowed length of line
        maxLineGap=1  # Max allowed gap between line for joining them
    )
    return lines
def region_of_interest(image):
    height = 288
    width = 512
    polygons = np.array([[(0, 288), (512, 288), (256,180)]])
    #polygons2 = np.array([[(0, 350), (0, height), (width, 350), (width, height)]])
    mask = np.zeros_like(image)
    #cv.rectangle( mask, (0, 350), (width, height), 255, -1)
    cv.fillPoly(mask, polygons, 255)
    #cv.fillPoly(mask, polygons2, 255)
    masked_image = cv.bitwise_and(image, mask)

    return masked_image
def error(image, offset):
    # x - y37/105 - 193 = 0
    e = 0
    t = 0
    #print(image[287][511])
    for x in range(0,511):
        for y in range (180, 287):
            if image[y][x] ==  255 :
                t = t + 1
                if x > 256 :
                    e = e + 1
                else:
                    e = e - 1

    if t ==  0:
        return 0

    return e/t + offset

def decode(V ,off):
    v2 = V + off*V
    v1 = V - off*V

    return v1, v2

def discrete_pid(Kp, Ki, Kd, dt, max_output, min_output):
    # Khởi tạo các biến
    error_sum = 0
    last_error = 0

    def pid(error):
        nonlocal error_sum, last_error

        # Tính toán tổng lỗi tích phân
        error_sum += error * dt

        # Tính toán đạo hàm của lỗi
        d_error = (error - last_error) / dt
        last_error = error

        # Tính toán giá trị điều khiển mới
        output = Kp * error + Ki * error_sum + Kd * d_error

        # Giới hạn giá trị điều khiển trong khoảng cho phép
        if output > max_output:
            output = max_output
        elif output < min_output:
            output = min_output

        return output

    return pid


# Khởi tạo hàm PID
pid = discrete_pid(Kp=0.02, Ki=0.004, Kd= 0, dt=0.33, max_output= 1 , min_output= -1)

#cap = cv.VideoCapture("/home/pi/Desktop/backup_9_1/video_record6.h264")
cap = cv.VideoCapture(0)
cap.set(3,512)
cap.set(4,288)
count = 0
while cap.isOpened() and not rospy.is_shutdown():
    ret, frame = cap.read()
    #start = time.time()
    if ret == False:
        break
    
    img = frame
    gray_img = cv.cvtColor(img, cv.COLOR_RGB2GRAY)
    gray_img = region_of_interest(gray_img)
    gray_img = cv.equalizeHist(gray_img)
    mask_gray = cv.inRange(gray_img, 230, 255)
    kernel = np.ones((8, 5), np.uint8)
    mask_gray = cv.erode(mask_gray, kernel)
    mask_gray = cv.dilate(mask_gray, kernel)

        # lines = line_detection(mask_gray)
        # if lines is not None:
        #     for points in lines:
        #         # Extracted points nested in the list
        #         x1, y1, x2, y2 = points[0]
        #         cv.line(img, (x1, y1), (x2, y2), (0, 255, 0), 2)
    cv.line(img, (256, 288), (256, 200),(0, 255, 0), 2 )
    cv.imshow("line", img)
    cv.imshow("mask", mask_gray)
        #cv.imshow("gray", gray_img)

    e = error(mask_gray, 0)
    rospy.loginfo(e)
    control = pid(e)
    V1, V2 = decode(60, control)
    #print(V1, "\n", V2)
    
    command = "!V"+ str(int(V1)) + ";"+str(int(V2)) + "#"
    #print(command)
    pub.publish(command)
    
    #end = time.time()
    #second = end - start
    #print("fps =",1/second)
    if cv.waitKey(1) & 0xFF == ord('q'):
        break

cap.release()
cv.destroyAllWindows()