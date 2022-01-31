FROM ubuntu:latest

RUN mkdir /project
WORKDIR /project

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl -y

RUN curl -O https://downloads.apache.org/tomcat/tomcat-9/v9.0.58/bin/apache-tomcat-9.0.58.tar.gz
RUN tar -xvf apache-tomcat-9.0.58.tar.gz
RUN mv apache-tomcat-9.0.58/* /project/.
RUN apt-get install openjdk-11-jdk -y

COPY out/artifacts/ensiast_job_war2/ensiast_job_war.war /project/webapps/ensiast_job_war.war

EXPOSE 8080

CMD ["/project/bin/catalina.sh", "run"]