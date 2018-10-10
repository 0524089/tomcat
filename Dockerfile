FROM ubuntu
MAINTAINER Docker cgt <0524089@nkust.edu.tw>
RUN apt-get update
RUN apt-get install -y wget
RUN cd /
ADD jdk-8u181-linux-x64.tar.gz /
RUN wget http://apache.stu.edu.tw/tomcat/tomcat-7/v7.0.91/bin/apache-tomcat-7.0.91.tar.gz
RUN tar zxvf apache-tomcat-7.0.91.tar.gz

ENV JAVA_HOME=/jdk1.8.0_181
ENV PATH=$PATH:/jdk1.8.0_181/bin
CMD ["/apache-tomcat-7.0.91/bin/catalina.sh", "run"]

