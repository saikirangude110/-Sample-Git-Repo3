FROM tomcat:8.0.20-jre8
MAINTAINER sagude
COPY Testing/Pipeline3/target/trucks.war /usr/local/tomcat/webapps
CMD ["catalina.sh", "run"]
