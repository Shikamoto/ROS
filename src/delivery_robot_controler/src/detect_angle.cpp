
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "delivery_robot_serial_handler/Pos.h"

int Pre_P1 = 0; 
int Pre_P2 = 0; 
void messageCallback(const delivery_robot_serial_handler::Pos::ConstPtr& msg) {
  int P1 = msg->P1, P2 = msg->P2;
  double angle = ((P1 - Pre_P1) - (P2-Pre_P2))*28125/998206;
  ROS_INFO("angle = :  %f]", angle);
}
 
int main(int argc, char **argv) {
  ros::init(argc, argv, "detect_angle");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("Pos", 1000, messageCallback);
  ros::spin();
  return 0;
}
