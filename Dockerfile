FROM centos:6

MAINTAINER Dries Schulten

RUN curl https://bintray.com/sbt/rpm/rpm | tee /etc/yum.repos.d/bintray-sbt-rpm.repo
RUN yum install -y epel-release
RUN yum install -y https://centos6.iuscommunity.org/ius-release.rpm
RUN yum install -y git2u openssh rpm-build java-1.8.0-openjdk-devel sbt python-pip bc; yum clean all

RUN pip install --upgrade pip awscli

