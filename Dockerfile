FROM openanalytics/shinyproxy:2.6.1
RUN chmod +x /opt/shinyproxy/*.jar
COPY application.yml /opt/shinyproxy/application.yml