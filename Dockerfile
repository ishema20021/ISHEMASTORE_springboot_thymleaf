# 1️⃣ Use official Maven image with JDK 21 to build the app
FROM maven:3.9.8-eclipse-temurin-21 AS build

# Set working directory
WORKDIR /app

# Copy pom.xml and download dependencies first (to leverage Docker cache)
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy the full source code
COPY src ./src

# Package the application (will generate target/*.jar)
RUN mvn clean package -DskipTests

# 2️⃣ Use Eclipse Temurin JDK 21 image to run the app
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the jar from the builder stage
COPY --from=build /app/target/*.jar app.jar

# Expose port 8080 (Render uses dynamic ports, but this is optional)
EXPOSE 8080

# Run the app, binding to PORT env var if provided by Render
ENTRYPOINT ["java", "-jar", "app.jar"]
