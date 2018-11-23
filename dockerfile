FROM openjdk:8-jdk-alpine
ARG JAR_FILE
COPY ${JAR_FILE} odin.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/odin.jar"]

