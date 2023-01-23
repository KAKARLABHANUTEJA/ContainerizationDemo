# FROM openjdk:1.8
FROM docker.io/eclipse/alpine_jdk8
COPY . /usr/app/
WORKDIR /usr/app/
ENV ARTIFACT_NAME=demo-0.0.1-SNAPSHOT.jar
RUN mvn build
EXPOSE 8080
ENTRYPOINT java -jar ./target/demo-0.0.1-SNAPSHOT.jar