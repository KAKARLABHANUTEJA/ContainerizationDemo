# FROM openjdk:1.8
# FROM docker.io/eclipse/alpine_jdk8
FROM docker.io/mvnd/alpine_3_6-openjdk-8-3.5.2
COPY . /usr/app/
WORKDIR /usr/app/
ENV ARTIFACT_NAME=demo-0.0.1-SNAPSHOT.jar
# RUN mvn build
# RUN mvn clean install -DskipTests
RUN mvn clean install 
EXPOSE 8080
ENTRYPOINT java -jar ./target/demo-0.0.1-SNAPSHOT.jar