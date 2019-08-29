FROM tomcat:9.0-jdk8

COPY kecak.war /usr/local/tomcat/webapps
RUN rm -rf /usr/local/tomcat/webapps/ROOT ; \
    mv /usr/local/tomcat/webapps/kecak.war /usr/local/tomcat/webapps/ROOT.war ; \
    mkdir /usr/local/tomcat/wflow ; \
    echo '' >> /usr/local/tomcat/wflow/app_datasource.properties ; \
    echo '' >> /usr/local/tomcat/wflow/app_datasource-default.properties ; \
    chmod -R 755 /usr/local/tomcat/wflow/

COPY tomcat8.sh /usr/local/tomcat/

EXPOSE 8080
EXPOSE 8000

ENV JAVA_MEMORY=${JAVA_MEMORY} 
ENV TOMCAT_DEBUG=${TOMCAT_DEBUG}
CMD ["/usr/local/tomcat/tomcat8.sh", "run"]
