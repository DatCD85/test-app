FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY target/full_stack_web_application-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8082

ENTRYPOINT ["java", "-jar", "/app/app.jar"]

EXPOSE 10000
