FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/docker-0.0.1-SNAPSHOT.jar target/app.jar
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]