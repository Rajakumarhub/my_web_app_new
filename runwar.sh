#!/bin/sh
war=$1
if [ $war = 'sample.war' ]
then
echo " started deploying the war ------->$1"
 service tomcat8 stop
 rm -rf /var/lib/tomcat8/webapps/*
 wget https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/$1
 ls -ltr *.war
 chmod 777 sample.war
 cp -f sample.war /var/lib/tomcat8/webapps/sample.war
 service tomcat8 start
else
echo " not the correct war "
fi

