FROM maven:3.8.4-openjdk-8-slim AS build

WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline

COPY src ./src
RUN mvn package -DskipTests

FROM openjdk:8-jdk

WORKDIR /app

COPY --from=build /app/target/demo.jar .

EXPOSE 80

CMD ["java", "-jar", "demo.jar"]
