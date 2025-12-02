# Multi-stage build Dockerfile for Spring Boot application

# Stage 1: Build the application using Maven
FROM maven:3.9-eclipse-temurin-17 AS build

WORKDIR /workspace

# Copy pom.xml and resolve dependencies for better layer caching
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copy the source code and package the application
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Create a lightweight runtime image
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

COPY target/logback-logging-app.jar /app/logback-logging-app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "logback-logging-app.jar"]