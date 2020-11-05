FROM centos:6

RUN yum update -y
RUN rm -rf /etc/yum.repos.d/*

COPY cent7.repo /etc/yum.repos.d/cent7.repo
RUN yum clean all
RUN yum update -y --skip-broken

RUN cat /etc/redhat-release
