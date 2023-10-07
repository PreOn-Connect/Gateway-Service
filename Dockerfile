FROM eclipse-temurin:17-jdk-jammy
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ARG EUREKA
ENV EUREKA_URL $EUREKA
ENTRYPOINT ["java","-jar","-Deureka-server-url=${EUREKA_URL}","/app.jar"]