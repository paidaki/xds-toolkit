FROM tomcat:8

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    nano \
    tzdata

COPY xdstools7.1.1.war /usr/local/tomcat/webapps/xdstools7.war

WORKDIR "/tmp/xdstools/cache"
