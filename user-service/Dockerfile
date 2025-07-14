FROM docker.io/maven:3.9.3-eclipse-temurin-8-alpine as build
WORKDIR /app
COPY . .
RUN mvn package -X

FROM openjdk:8-alpine
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY --from=build /app/target/user-service-*.jar /usr/local/bin/user-service.jar
RUN chmod 755 /usr/local/bin/user-service.jar

USER appuser

ENTRYPOINT ["java", "-jar", "/usr/local/bin/user-service.jar"]

