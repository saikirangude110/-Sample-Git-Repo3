FROM tomcat:8.0.20-jre8

MAINTAINER sagude

RUN mkdir /usr/local/tomcat/webapps/myapp

RUN pwd

COPY ./Pipeline3/target/trucks.war /usr/local/tomcat/webapps
