FROM centos

MAINTAINER AntonSO <Prototype5228@mail.ru>

RUN yum update -y && yum install -y epel-release && yum install -y gcc && yum install -y vim && yum install -y git
