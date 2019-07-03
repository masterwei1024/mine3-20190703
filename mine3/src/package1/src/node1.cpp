/*************************************************************************
    > File Name: pubvel.cpp
    > Author: ma6174
    > Mail: ma6174@163.com 
    > Created Time: 2018年08月13日 星期一 10时45分01秒
 ************************************************************************/
#include<iostream>
#include<ros/ros.h>
#include<package1/xx.h>
#include<package1/xsxx.h>
#include<stdlib.h>
#include<unistd.h>
#include"xxxt.h"

using namespace std;


int main(int argc,char **argv)
{
    ros::init(argc,argv,"publish_velocity");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<package1::xx>("chatter",1000);
    ros::Publisher pub2 = nh.advertise<package1::xsxx>("chatter1",1000);
    srand(time(0));
    ros::Rate rate(2);
    package1::xx msg;
    package1::xsxx msg2;
   
    //ROS_INFO_STREAM("select a number: ");
    msg.value=-1;
    msg.number=-1;

   // student stu;
   while(msg.value!=0)
{
    ROS_INFO_STREAM("select a number: ");
    cin>>msg.value;
   // pub.publish(msg);
    
   switch(msg.value)
   {  case 1:pub.publish(msg);
             ROS_INFO_STREAM("input num: ");
             cin>>msg2.num;
             ROS_INFO_STREAM("input name: ");
             cin>>msg2.name;
             ROS_INFO_STREAM("input sex: ");
             cin>>msg2.sex;
             ROS_INFO_STREAM("input age: ");
             cin>>msg2.age;
           
             pub2.publish(msg2);
             break;
      case 2:pub.publish(msg);break;
      case 3:pub.publish(msg);break;
      case 4:
             cout<<"请输入要查找的学号:" ;
             cin>>msg.number ;        
             pub.publish(msg);break;


 
}
}
  
//      ROS_INFO_STREAM("send msg: linear = "<<msg.value);

        rate.sleep();
}


