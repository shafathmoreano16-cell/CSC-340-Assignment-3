# Build the Spring Boot app using Java 21
FROM eclipse-temurin:21-jdk AS build

WORKDIR /app

# Copy all project files into the Docker image
COPY . .

# Build the jar file
RUN ./mvnw clean package -DskipTests

# Run the app with Java 21
FROM eclipse-temurin:21-jre

WORKDIR /app

# Copy the jar file from the build step
COPY --from=build /app/target/*.jar app.jar

# Spring Boot runs on port 8080
EXPOSE 8080

# Start the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]