FROM openjdk:11-jre-slim

WORKDIR /usr/src/app

COPY target/devops-integration.jar ./devops.jar

ENTRYPOINT ["java","-jar","/devops.jar"]
