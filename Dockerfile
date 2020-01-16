FROM teamsprint/centos:7

MAINTAINER Jooho Kim

USER root
  
RUN yum -y install java-1.8.0-openjdk-devel.x86_64 && yum clean all

ENV JAVA_HOME /usr/lib/jvm/java
ENV PATH $PATH:$JAVA_HOME/bin

CMD ["/bin/bash"]

