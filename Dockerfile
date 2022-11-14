FROM nginx:alpine
COPY dist/crudtuto-Front/ /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf



FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} achat.jar
ENTRYPOINT ["java","-jar","/achat.jar"]
EXPOSE 8089