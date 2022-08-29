# django_auth_system
说明:后端使用django, 前端使用layuimini, 数据库使用mysql5.7的后台管理系统

后端人员可基于此快速开发自己的应用

一.目录结构
1.文件夹说明
├─auth_system   # 入口app
├─common         # 自定义函数
├─login               # 登陆app
├─sql                  # sql文件
├─static              # 静态文件
├─sys_manage   #系统管理app
└─templates        #html文件


二.页面
1.登陆界面
![image](https://user-images.githubusercontent.com/103081755/187101407-0aa7f9d9-02c0-4791-80b3-3d94f57024d7.png)


2.首页
![image](https://user-images.githubusercontent.com/103081755/187101415-33034b5c-b290-4e3c-9c7c-a790dd656edc.png)


3.用户管理
![image](https://user-images.githubusercontent.com/103081755/187101424-f9805c35-8a18-4551-b7cd-f781162ba992.png)

![image](https://user-images.githubusercontent.com/103081755/187101434-9e9c2772-69f4-4517-93af-cddd75b1d125.png)


4.角色管理
![image](https://user-images.githubusercontent.com/103081755/187101441-bbf7355c-18a8-4b23-94d2-470818a912e8.png)

![image](https://user-images.githubusercontent.com/103081755/187101454-08274c55-35cb-42d1-82db-fbe66ad730ae.png)

5.权限管理
![image](https://user-images.githubusercontent.com/103081755/187101460-fc08458a-6a72-43c1-9ade-4b1d973d9b93.png)


6.日志管理
![image](https://user-images.githubusercontent.com/103081755/187101468-b3a2a31d-2612-4887-af9f-85bdbd6fac3d.png)


三. 项目部署
1.github下载项目

2.安装项目依赖、第三方安装包

  pip3 install -r requirements.txt

3.安装mysql,   centos7安装mysql5.7可参考以下博客

Centos7 安装mysql5.7_z60015260的博客-CSDN博客

4.创建数据库auth_system

5.执行数据库迁移， 生产对应的系统表

   python3 manage.py migrate

6.导入sql文件夹下的auth_system.sql, 插入相关数据

7.运行项目

   python3 manage.py runserver


