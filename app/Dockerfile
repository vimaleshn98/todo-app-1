FROM maven:3.5-jdk-8
RUN echo "${env.BUILD_NUMBER}/${env.BUILD_NUMBER}"
COPY ${env.BUILD_NUMBER}/${env.BUILD_NUMBER}/TodoDemo-0.0.1-SNAPSHOT.war app.war

ENTRYPOINT [ "java","-jar","app.war" ]