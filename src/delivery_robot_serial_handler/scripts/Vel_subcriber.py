#!/usr/bin/env python3
import rospy
from delivery_robot_serial_handler.msg import Vel
def callback(data):
    rospy.loginfo(data.V1)
rospy.init_node('listener', anonymous=True)

rospy.Subscriber('Vel', Vel, callback)

# spin() simply keeps python from exiting until this node is stopped
rospy.spin()