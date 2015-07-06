FROM tomcat:7-jre8
MAINTAINER prashant4nov

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/ROOT"]
COPY filename.war /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]

# docker build -t image_name . 
# docker run (-it or -d) -P --name container_name image_name catalina.sh run && tail -f /usr/local/tomcat/logs
# docker ps -l
# docker port container_name