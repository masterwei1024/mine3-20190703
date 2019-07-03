/*******************************************************************/
/*                      Author: wqk                                */
/*                     Contact: 1520247204@qq.com              */
/*               First version: 2018-05-21                         */
/*                 Last update: 2018-08-30                         */
/*******************************************************************/
#include <iostream>
#include <iomanip>
#include <string.h>
#include <fstream>
#include <package1/xx.h>
#include <package1/xsxx.h>
using namespace std;


//*********************定义结构体**********************
/*struct student
{
    int num;
    char name[20];
    char sex;
    int age;
};*/
//*********************定义类*************************
class System
{
public:
        void callback(const package1::xsxx& msg2);
        void poseMessageReceived(const package1::xx& msg);
	void input();
	void output();
	void bubblesort();
	void search(int a);
	     System();      //构造函数
//	~System();                       //析构函数
private:
	package1::xsxx stu[5];
        int counter;
        package1::xx tmp2;
//	int m;
};
