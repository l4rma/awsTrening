FROM maven:3.6-jdk-11 as builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn -B  package

FROM adoptopenjdk/openjdk11:alpine-slim
COPY --from=builder /app/target/demo-0.0.1-SNAPSHOT.jar /app/application.jar
ENTRYPOINT ["java","-jar","/app/application.jar"]
