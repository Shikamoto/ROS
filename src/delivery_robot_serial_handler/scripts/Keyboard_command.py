#!/usr/bin/env python3
import rospy
import time
from std_msgs.msg import String

rospy.init_node("KeyboardCommand_node")
rospy.loginfo ("Node has been Started !")

#pub = rospy.Publisher('decition', String, queue_size=10)
pub = rospy.Publisher('command', String, queue_size=10)
while not rospy.is_shutdown():
    command =input()
    pub.publish(command)
    time.sleep(1)
    command = "!V0;0#"
    pub.publish(command)
rospy.loginfo ("end of program")