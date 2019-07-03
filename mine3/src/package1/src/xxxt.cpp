/*******************************************************************/
/*                      Author: wqk                                */
/*                     Contact: 1520247204@qq.com                  */
/*               First version: 2018-05-21                         */
/*                 Last update: 2018-08-30                         */
/*******************************************************************/


#include "xxxt.h"
#include "package1/xx.h"
#include "package1/xsxx.h"

//***************]******输入模块************************
void System::callback(const package1::xsxx& msg2) 
{
 // int i=0;
//for(int i=0;i<=4;i++){
//cout<<"按提示输入:"<<endl;
//cout<<"输入学号:";
stu[counter].num = msg2.num;
//cout<<"输入姓名:";
stu[counter].name = msg2.name;
//cout<<"输入姓别:";
stu[counter].sex = msg2.sex;
//cout<<"输入年龄:";
stu[counter].age = msg2.age;
//cout<<"*****继续输入*****"<<endl;
//}
counter++;
if(counter>4)
counter=0;      //仅仅是为了程序的健壮性

}

//*********************输出模块************************
void System::output()
{
cout<<endl<<"输出显示:"<<endl;
for(int j=0;j<=4;j++)
{cout<<stu[j].num<<"  "<<stu[j].name<<"  "<<stu[j].sex<<"  "<<stu[j].age<<endl;}
}

//*********************排序模块************************
void System::bubblesort() //student a[] ,int m
{
	package1::xsxx tmp;
        int flag=0;        //设定标志设定标志，如果第一次循环比较时没有发生
                           //交换，则说明数组是升序排序，不用排序，提前结束循环
   for(int i=0;i<5;i++)   //外层循环控制循环次数
   {
	   for(int j=0;j<5-1-i;j++)  //内层循环控制每次循环里比较的次数
	   {
		   if( stu[j].age > stu[j+1].age )
		   {
		      tmp.age=stu[j].age;
                      stu[j].age=stu[j+1].age;
		      stu[j+1].age=tmp.age;
              
                tmp.num=stu[j].num;
                stu[j].num=stu[j+1].num;
                stu[j+1].num=tmp.num;
		
	   
                tmp.name=stu[j].name;
                stu[j].name=stu[j+1].name;
                stu[j+1].name=tmp.name;
               //strcpy(tmp.name,stu[j].name);
              //strcpy(stu[j].name,stu[j+1].name);
              //strcpy(stu[j+1].name,tmp.name);      

                tmp.sex=stu[j].sex;
                stu[j].sex=stu[j+1].sex;
                stu[j+1].sex=tmp.sex;   

		/*	  strcpy(&(tmp.sex),&(a[j].sex));
              strcpy(&(a[j].sex),&(a[j+1].sex));
              strcpy(&(a[j+1].sex),&(tmp.sex));    */   //此方法不可行
			  flag=1;
		   }  
	 }
      if(flag==0)
	  {cout<<"No Sort\n";break; }  
   }
  output();
}

//*********************查找模块************************
void System::search(int a)
{

  
    //int m;
      //cout<<"请输入要查找的学号:";
   // cin>>m;
           
         int i;          //for中定义的话可行域只在for中
	for(i=0;i<5;i++)
	{
         if(stu[i].num==a)break;
        }
   cout<<"要查找的学生是： ";
   cout<<stu[i].num<<"  "<<stu[i].name<<"  "<<stu[i].sex<<"  "<<stu[i].age<<endl;

}
//*********************command模块************************
void System::poseMessageReceived(const package1::xx& msg)    //package1::xsxx& msg2
{
//student stu1[5]={{1,"q",'f',2},{2,"w",'m',4},{3,"e",'m',1},{4,"r",'m',3},{5,"t",'m',5}};
//   System system(stu1);

     switch(msg.value)

  {    case 1:/*system.callback();*/
             cout<<"please input students' messages in node1:";
             break;
       case 2:output();break;
       case 3:bubblesort();break;
       case 4:search(msg.number);break;
}

}

//*********************构造函数模块**********************
System::System()   // 把stu里的信息赋值给this->stu[5]
{       
counter=0;
	/*     for(int i=0;i<5;i++)
		 {
                  stu[i].num = stu2[i].num;
		  strcpy(stu[i].name,stu2[i].name);
		  stu[i].sex = stu2[i].sex;
		  stu[i].age = stu2[i].age;
		 }                                 */
		
}

