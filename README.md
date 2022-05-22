# docker

#### 介绍

ThinkCMF docker环境

通过`docker-compose`组成容器集群群

#### 目录说明

`mysql/data` 存放mysql持久化数据

`nginx` 存放nginx配置

`php` 存放php配置 php.ini

`php-fpm` 存放fpm服务的php镜像构建文件

`php-swoole` 存放swoole服务的php镜像构建文件

`php-workerman` 存放workerman服务的php镜像构建文件

`redis/data` 存放redis持久化数据

`shell` 存放shell脚本

`www` 存放项目

#### 安装教程

1.  确保已经安装`docker` 和 `docker-compose` 
2.  `docker-compose up` 启动集群
3.  访问127.0.0.1 安装thinkcmf

#### 使用说明

1.  `mysql` 数据库账户root 数据库密码 thinkcmf  数据库地址mysql
2.  `redis` 默认没账号密码
3.  集群`mysql`管理`adminer`  访问 http://127.0.0.1:1000/   
4.  集群`redis`管理`phpredisadmin`  访问 http://127.0.0.1:2000/   管理平台账号thinkcmf 管理平台密码thinkcmf

#### 注意事项
1. ` mysql redis php-fpm `均没映射对外端口  值映射出`nginx` 的80 端口
