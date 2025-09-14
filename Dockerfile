FROM openjdk:21-jdk-slim
WORKDIR /app
ARG JAR_FILE=target/spring-boot-hello-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
EXPOSE 9090
ENTRYPOINT ["java","-jar","app.jar","--server.port=9090","--server.address=0.0.0.0"]
