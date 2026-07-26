FROM maven:3.8.4-openjdk-17-slim

WORKDIR /bp/workspace

COPY . .

RUN mvn clean verify

ENTRYPOINT ["java", "-jar", "target/salary-0.3.0-RELEASE.jar"]
