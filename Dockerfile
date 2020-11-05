FROM centos:6

RUN yum update -y
RUN yum clean all
RUN rm -rf /etc/yum.repos.d/*

COPY cent7.repo /etc/yum.repos.d/cent7.repo
RUN yum update -y

RUN cat /etc/etc/redhat-release
