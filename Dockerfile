
FROM openjdk:8-jdk

WORKDIR /app

COPY ./demo.jar .

EXPOSE 80

CMD ["java", "-jar", "demo.jar"]
