FROM openjdk:8-jdk
WORKDIR /app
COPY ./target/demo.jar .
CMD ["java", "-jar", "demo.jar"]
