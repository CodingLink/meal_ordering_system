1. # 基于SSM搭建的点餐系统（前台+后台）
    
    #### 介绍
    
    Maven+Idea+Spring+SpringMVC+MyBatis+JSP实现的点餐系统（前台+后台）  
    github地址：https://github.com/CodingLink/meal_ordering_system  
    gitee地址：https://gitee.com/CodingPeppa/meal_ordering_system   
    
       
    
    #### 软件架构
    
    软件架构说明
    
    
    #### 安装教程
    
    1.  数据库文件：apsfc 20150727 2133.sql 导入数据库 
    2.  修改`applicationContext.xml`文件的数据库信息（默认数据库名：apsfc 用户名：root 密码：123456）
    3.  在根目录下运行`mvn package`,将打包后的war包导入tomcat的`/webapp`目录下
    
    #### 使用说明
    
    前台：http://localhost:8080/qiantai
    后台：http://localhost:8080/admin
    
    
    
    #### 常见问题：
    
    1. 启动tomcat时，过滤器无法生效？  
       建议使用tomcat 8.5.65版本。