FROM websphere-liberty 
MAINTAINER saisasank
COPY $PWD/server.xml /opt/ibm/wlp/usr/servers/defaultServer/server.xml
COPY $PWD/dist/sample.war /opt/ibm/wlp/usr/servers/defaultServer/apps/sample.war 
