FROM armv7/armhf-java8
MAINTAINER Shao (armv7/armhf-java8) java:8
ADD /target/spring-boot-docker.jar boot.jar
ADD /src/main/resources/application-docker.properties  application.properties
EXPOSE 8010
ENTRYPOINT ["java","-jar","-Xms100m","-Xmx100m","boot.jar","--spring.config.location=application.properties"]
VOLUME ["/tmp","/Users/shao/Downloads"]








