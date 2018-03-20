FROM tomcat:8.0
ENV CATALINA_HOME /opt/apache-tomcat-7.0.37
ADD /target/SpringMVCloginExample-0.0.1-SNAPSHOT.war /opt/apache-tomcat-7.0.37/webapps
EXPOSE 7080
WORKDIR /
WORKDIR opt/apache-tomcat-7.0.37/bin/
CMD ["./catalina.sh","run"]
