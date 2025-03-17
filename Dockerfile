# Use an official OpenJDK image from Docker Hub
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target folder into the container's /app directory
COPY target/*.jar app.jar

# Expose the port your Spring Boot app will run on (default is 8080)
EXPOSE 8080

# Run the Spring Boot application when the container starts
ENTRYPOINT ["java", "-jar", "app.jar"]