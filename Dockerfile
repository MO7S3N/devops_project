FROM openjdk:8-jdk-alpine
COPY target/*.jar achat.jar
ENTRYPOINT ["java","-jar","/achat.jar"]
EXPOSE 8089