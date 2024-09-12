FROM tomcat:10.1.28
LABEL maintainer="satheeskumar.pmp@gmail.com"

ADD demo.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]