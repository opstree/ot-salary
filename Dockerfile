FROM maven:3.8.4-openjdk-17-slim as builder
MAINTAINER Opstree Solutions
WORKDIR /java/
COPY pom.xml /java/
COPY src /java/src/
RUN mvn clean verify

FROM alpine:latest
MAINTAINER Opstree Solutions
USER root
RUN apk update && \
    apk add openjdk17
COPY --from=builder /java/target/salary-0.3.0-RELEASE.jar /app/salary.jar
COPY --from=builder /java/target/jacoco.exec /bp/workspace/jacoco.exec
COPY --from=builder /java/target/classes /bp/workspace/classes
EXPOSE 8080
ENTRYPOINT ["/usr/bin/java", "-jar", "/app/salary.jar"]
