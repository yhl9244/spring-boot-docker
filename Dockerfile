FROM java:8
MAINTAINER Shao
ADD /target/spring-boot-docker-0.0.1-SNAPSHOT.jar boot.jar
ADD /src/main/resources/application-docker.properties  application.properties
EXPOSE 8040
ENTRYPOINT ["java","-jar","-Xms100m","-Xmx100m","boot.jar","--spring.config.location=application.properties"]
VOLUME ["/tmp","/Users/shao/Downloads"]








