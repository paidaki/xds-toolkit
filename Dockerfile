FROM tomcat:8-alpine

RUN apk --no-cache update \
    && apk --no-cache add \
        unzip

WORKDIR /usr/local/tomcat/webapps

COPY xdstools7.1.1.war ./xdstools7.war

RUN unzip xdstools7.war
