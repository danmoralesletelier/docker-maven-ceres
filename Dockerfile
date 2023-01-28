# Stage 1 - compila aplicacion
FROM maven:3.6.3-adoptopenjdk-11 as stage_compila
COPY src /home/maven-ceres/src
COPY pom.xml /home/maven-ceres
RUN mvn -f /home/maven-ceres/pom.xml clean install -Dmaven.test.skip=true

# Stage 2 - arma el imagen
FROM openjdk:8-jre-alpine as stage_image
WORKDIR /home/maven-ceres/build
COPY --from=stage_compila "/home/maven-ceres/build/DevOpsUsach2020-0.0.1.jar" .
EXPOSE 8080
ENTRYPOINT [ "java", "-jar", "/home/maven-ceres/build/DevOpsUsach2020-0.0.1.jar"]
