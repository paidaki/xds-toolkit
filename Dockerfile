FROM tomcat:8-alpine

RUN apk --no-cache update \
    && apk --no-cache add \
        unzip

WORKDIR /usr/local/tomcat/webapps

COPY xdstools7.2.2.war ./xdstools7.war

RUN unzip -d xdstools7 xdstools7.war
