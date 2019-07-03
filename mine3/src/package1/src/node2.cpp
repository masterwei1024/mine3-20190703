/*************************************************************************
    > File Name: subpose.cpp
    > Author: ma6174
    > Mail: ma6174@163.com 
    > Created Time: 2018年08月13日 星期一 11时23分39秒
 ************************************************************************/

#include <ros/ros.h>
#include <package1/xx.h>
#include <package1/xsxx.h>
#include <iomanip>
#include "xxxt.h"
int main(int argc,char **argv)
{
    ros::init(argc,argv,"subpose");

    ros::NodeHandle nh;
    System system;
 //   while(ros::ok())
//{
    //ros::Subscriber sub = nh.subscribe("chatter",1000,&poseMessageReceived);

    ros::Subscriber sub = nh.subscribe("chatter",1000,&System::poseMessageReceived, &system);
    ros::Subscriber sub2 = nh.subscribe("chatter1",1000,&System::callback, &system);

    //ros::Subscriber sub2 = nh.subscribe("chatter",1000,&poseMessageReceived);

    ros::spin();
//}
}

