FROM openjdk:17-jdk-slim

EXPOSE 8088

ENV EUREKA_URL=EUREKA_URL

COPY target/*.jar gateway-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/gateway-0.0.1-SNAPSHOT.jar", "EUREKA_URL=$EUREKA_URL"]
