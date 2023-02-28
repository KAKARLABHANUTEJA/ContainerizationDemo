# FROM openjdk:1.8
# FROM docker.io/eclipse/alpine_jdk8
FROM docker.io/mvnd/alpine_3_6-openjdk-8-3.5.2
COPY . /usr/app/
WORKDIR /usr/app/
ENV ARTIFACT_NAME=demo-0.0.1-SNAPSHOT.jar
# RUN mvn build
# RUN mvn clean install -DskipTests
RUN mvn clean install 
# RUN useradd -ms /bin/bash newuser
# USER newuser

# Create a user group '6130group'
RUN addgroup -S 6130group

# Create a user 'appuser' under 'xyzgroup'
RUN adduser -S -D -h /usr/app/src appuser 6130group

# Chown all the files to the app user.
RUN chown -R appuser:6130group /usr/app

# Switch to 'appuser'
USER appuser
EXPOSE 8080
ENTRYPOINT java -jar ./target/demo-0.0.1-SNAPSHOT.jar
