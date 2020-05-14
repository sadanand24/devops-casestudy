FROM tomcat:latest

ADD target/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8885

RUN sed -i 's/port="8080"/port="8885"/' /usr/local/tomcat/conf/server.xml

RUN echo "Docker image creation"

MAINTAINER "sadanandsai4@gmail.com"

CMD ["catalina.sh", "run"]