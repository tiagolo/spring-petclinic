FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=/target/spring-petclinic*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar","--spring.profiles.active=mysql"]
EXPOSE 8080