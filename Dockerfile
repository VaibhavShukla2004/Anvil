# Use lightweight JDK image
FROM eclipse-temurin:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy jar file
COPY target/AnvilJar.jar AnvilJar.jar

# Expose port (default Spring Boot)
EXPOSE 8080

# Run application
ENTRYPOINT ["java","-jar","app.jar"]
