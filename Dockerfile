FROM tomcat:10.1.28

RUN chown -R 8877:8877 /usr/local/tomcat/webapps/
RUN chmod -R g+rwx /usr/local/tomcat/webapps/
RUN rm -rf /usr/local/tomcat/webapps

COPY *.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh", "run"]
