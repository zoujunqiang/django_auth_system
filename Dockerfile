# 建立python 3.8环境
FROM python:3.8
 
 
# 安装netcat
#RUN apt-get update && apt install -y netcat
 
 
# 镜像作者
MAINTAINER ZJQ
 
 
# 设置 python 环境变量
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
 
 
# 可选：设置镜像源为国内
#COPY pip.conf /root/.pip/pip.conf
 
 
# 容器内创建 myproject 文件夹
ENV APP_HOME=/var/www/html/auth_system
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
 
 
# 将当前目录加入到工作目录中（. 表示当前目录）
ADD . $APP_HOME
 
 
# 更新pip版本
RUN /usr/local/bin/python -m pip install --upgrade pip
 
 
# 安装项目依赖
RUN pip install -r requirements.txt
 
# 安装uwsgi
RUN pip install uwsgi

# 移除\r in windows
#RUN sed -i 's/\r//' ./start.sh
 
 
# 给start.sh可执行权限
RUN chmod +x ./start.sh
 
 
# 数据迁移，并使用uwsgi启动服务
ENTRYPOINT /bin/bash ./start.sh


