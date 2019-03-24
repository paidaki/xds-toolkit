FROM tomcat:8-alpine

WORKDIR /usr/local/tomcat/webapps

COPY xdstools7.1.1.war ./xdstools7.war

RUN jar -xvf xdstools7.war
