FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ./target/gateway-service.jar gateway-service.jar

ENTRYPOINT ["java","-jar","/gateway-service.jar"]