FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ./target/gateway-service.jar gateway-service.jar

ENV EUREKA_HOST=discovery-service

ENTRYPOINT ["java","-jar","/gateway-service.jar"]