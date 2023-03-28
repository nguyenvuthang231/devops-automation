FROM openjdk:11-jre-slim

WORKDIR /usr/src/app

COPY target/build-push-docker-image-to-aws-ecr*.jar ./devops.jar

ENTRYPOINT ["java","-jar","/devops.jar","--spring.config.location=admin/application.properties"]
