FROM java:8
MAINTAINER Shao (armv7/armhf-java8) java:8
ADD /target/spring-boot-docker.jar boot.jar
ADD /src/main/resources/application-docker.properties application.properties
ENV env QAZWSX
EXPOSE 8030
ENTRYPOINT ["java","-jar","-Xms100m","-Xmx100m","boot.jar","--spring.config.location=application.properties"]
# 只能新增挂载点 不能映射到外部宿主机
VOLUME ["/tmp"]








