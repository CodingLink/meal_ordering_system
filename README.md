1. # 基于SSM搭建的点餐系统（前台+后台）
    
    #### 介绍
    
    Maven+Idea+Spring+SpringMVC+MyBatis+JSP实现的点餐系统（前台+后台）  
    github地址：https://github.com/CodingLink/meal_ordering_system  
    gitee地址：https://gitee.com/CodingPeppa/meal_ordering_system   
    
       
    
    #### 软件架构
    
    1. Mysql: 8.0.28
    2. JDK 1.8
    3. Tomcat 9.0.56
    
    
    #### 安装教程
    ##### 二进制文件方式
    
    1.  数据库文件：apsfc 20150727 2133.sql 导入数据库 
    2.  修改`applicationContext.xml`文件的数据库信息（默认数据库名：apsfc 用户名：root 密码：123456）
    3.  在根目录下运行`mvn package`,将打包后的war包导入tomcat的`/webapp`目录下

    ##### [Docker-Compose方式](./deploy/README.md)
    
    
    #### 使用说明
    
    前台：http://localhost:8080/meal_ordering_system/qiantai  
    后台：http://localhost:8080/meal_ordering_system/admin
    
    
    