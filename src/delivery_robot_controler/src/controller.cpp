#include "ros/ros.h"
#include "std_msgs/String.h"
#include "stdio.h"
#include <boost/thread/thread.hpp>
//
char Command[25];
int V1 =0, V2 = 0;
//
int muoi_mu(int a);
int Int2Str(int a, int offset);
void  encode_V(int V1, int V2) ;
void controllerCallback(const std_msgs::String::ConstPtr& msg);
void do_stuff();
//
int main(int argc, char **argv)
{
    ros::init(argc, argv, "controller");
    ros::NodeHandle n;
    ros::Publisher controller_pub = n.advertise<std_msgs::String>("command", 1000);
    ros::Rate loop_rate(10);

    boost::thread thread_b(do_stuff);
    int count = 0;
    while (ros::ok())
    { 
        while(count < 50)
        {
        std_msgs::String msg;
        std::stringstream ss;
        encode_V(V1,V2);
        ss << Command ;
        msg.data = ss.str();
        
        //ROS_INFO("%s", msg.data.c_str());
        controller_pub.publish(msg);
        ros::spinOnce();
        loop_rate.sleep();
        if (V1 == 0 && V2 == 0)
        {
          count++;
        }
        else
        {
          count = 0;
        }
        }
        if (V1 != 0|| V2 !=0)
        {
          count = 0 ;  
        }
         
    }
    return 0;
}
/* thread*/
void do_stuff()
{
  printf("hello \n");
  ros::Rate loop_rate(10);
  while (ros::ok()) //ros::ok()
  {
    printf("V1 = \n");
    scanf("%d",&V1);
    printf("V2 = \n");
    scanf("%d",&V2);
    loop_rate.sleep();
  }
  printf("end program !");
}
/* Send Velocity*/

void  encode_V(int V1, int V2)
{
    /*  ex : !V200;-200#   */
  static int pre_l = 0;
  Command[0] = '!';
	Command[1] = 'V';
	int l  =  Int2Str(V1, 2) +2;
	Command[l++] = ';';
	l = Int2Str(V2,l) + l;
	Command[l++] = '#' ;
  for (int i = l; i < pre_l; i++)
  {
    Command[i] = 0;
  }
  pre_l = l;
}		
/* 10^a*/
int muoi_mu(int a) /*a >= 0*/
{
	int  r =1;
	if (a == 0){
	return r;
	}
	else if (a < 0){
	return 0;
	}
	r =10*muoi_mu(a -1);
	return r;
}
/* Int to String */
int Int2Str(int a, int offset)
{
    char* p = Command;
		p = p + offset;
    int l = -1;
    int i = 1;
	int neg =0;
    while ( i!=0)
    {
		i = a/muoi_mu(++l);
    }
    if (a == 0) l =1;
    
    if (a < 0)
    {
       *p = '-';
       p++;
       a = -a;
		neg =1;
    }
    int temp;
    for (int j =0 ; j < l ; j++)
      {
          temp =a;
					temp = temp%muoi_mu(j+1);
          *(p+l-1-j) =temp/muoi_mu(j) + 48;
          a = a - temp;
      }
		
    return l+neg;
}