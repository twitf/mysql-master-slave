FROM centos:7

RUN echo "root:root" | chpasswd

RUN yum -y install net-tools

ENV JAVA_HOME /usr/local/jdk1.7.0_80
ENV CLASSPATH ${JAVA_HOME}/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV PATH $PATH:${JAVA_HOME}/bin

# install java mycat
RUN cd /usr/local && \
  curl -O http://mirrors.linuxeye.com/jdk/jdk-7u80-linux-x64.tar.gz -L && \
  tar -zxvf jdk-7u80-linux-x64.tar.gz && \
  rm -f jdk-7u80-linux-x64.tar.gz && \
  curl -O http://dl.mycat.io/1.6.6.1/Mycat-server-1.6.6.1-release-20181031195535-linux.tar.gz -L && \
  tar -zxvf Mycat-server-1.6.6.1-release-20181031195535-linux.tar.gz && \
  rm -f Mycat-server-1.6.6.1-release-20181031195535-linux.tar.gz

VOLUME /usr/local/mycat/conf

EXPOSE 8066 9066

CMD ["/usr/local/mycat/bin/mycat", "console"]