FROM tomcat:8.0
ENV CATALINA_HOME /usr/local/tomcat
ADD /target/SpringMVCloginExample-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps
EXPOSE 8080
WORKDIR /
WORKDIR /usr/local/tomcat/webapps/bin/
CMD ["./catalina.sh","run"]
