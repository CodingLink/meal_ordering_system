# 🍽️ meal_ordering_system

基于SSM框架搭建的点餐系统，包括前台和后台功能。

## 📝 介绍

该项目是使用Maven、Idea、Spring、SpringMVC、MyBatis和JSP等技术实现的点餐系统。你可以在Github和Gitee上找到该项目的源代码。  

Github地址：https://github.com/CodingLink/meal_ordering_system  
Gitee地址：https://gitee.com/CodingPeppa/meal_ordering_system  

## 🛠️ 软件架构  
Mysql: 8.0.28
JDK 1.8
Tomcat 9.0.56

## 🔧 安装教程
二进制文件方式  
1. 导入数据库文件：apsfc 20150727 2133.sql  
2. 修改applicationContext.xml文件的数据库信息（默认数据库名：apsfc，用户名：root，密码：123456）  
3. 在根目录下运行mvn package，将打包后的war包导入Tomcat的/webapp目录下  

[Docker-Compose方式](./deploy/README.md)

## 📖 使用说明
你可以通过以下链接访问点餐系统的前台和后台功能：

前台：http://localhost:8080/meal_ordering_system/qiantai  
后台：http://localhost:8080/meal_ordering_system/admin  

## 🤝 贡献
目前该项目已不再维护  
如果你对该项目有任何建议或意见，欢迎提出issue或PR。 

## 📄 许可证
本项目基于MIT许可证开源。
