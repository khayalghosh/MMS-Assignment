FROM tomcat
RUN wget https://tomcat.apache.org/tomcat-8.5-doc/appdev/sample/sample.war -P $CATALINA_HOME/webapps
CMD ["catalina.sh", "run"]
EXPOSE 8080