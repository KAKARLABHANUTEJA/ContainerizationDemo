# ContainerizationDemo
web Application for 6130 Project


Steps to setup the container running in local:
 1. Building the image from scratch in local
    i) clone the this repo in your local
    ii) build the code using mvn install or mvn build commands
    iii) Open powershell in the current code repository folder and run "docker build ." or "docker build -t <image_name> ."
    iv) Run the container using the image created by "docker run -p 8080:8080 <image_name>"
    v) Try to hit the following url and you should be able to see the string output : localhost:8080/api/helloworld
 
 2. By directly using the existing image in dockerhub:
    i) By using the docker pull command pull the base image from: https://hub.docker.com/repository/docker/bhanuteja8339/sample_demo_app_6130/general
    ii) Now follow the steps from 1.iv
