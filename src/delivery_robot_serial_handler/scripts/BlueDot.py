#!/usr/bin/env python3
import rospy
from bluedot import BlueDot
from std_msgs.msg import String

def dpad(pos):
    if pos.top:
        print("Forward")
        command ="!V150;150#"
        pub.publish(command)
    elif pos.bottom:
        print("Reverse")
        command ="!V-100;-100#"
        pub.publish(command)
    elif pos.left:
        print("Left")
        command ="!V100;50#"
        pub.publish(command)
    elif pos.right:
        print("Right")
        command ="!V50;100#"
        pub.publish(command)
    elif pos.middle:
        command ="!p#"
        pub.publish(command)
        print("Code Killed")
        command ="!V0;0#"
        pub.publish(command)
rospy.init_node("BlueDot_node")
rospy.loginfo ("BlueDot node has been Started !")
pub = rospy.Publisher('command', String, queue_size=10)

bd = BlueDot()
bd.when_pressed = dpad
rospy.spin()
rospy.loginfo ("end of program")