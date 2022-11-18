FROM alpine:latest
RUN apk add openjdk11
ARG JAR_FILE=target/*.jar
RUN apk --no-cache add curl
RUN curl -u admin:belha1234 -o achat-1.0.jar "http://192.168.1.23:8081/repository/maven-releases/tn/esprit/rh/achat/1.0/achat-1.0.jar" -L
ENTRYPOINT ["java","-jar","/achat-1.1.jar"]
EXPOSE 8089
