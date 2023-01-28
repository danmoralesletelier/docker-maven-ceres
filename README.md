# docker-maven-ceres
Implementa Docker Multistage con aplicación maven-ceres

Pasos para generar la imagen y probarla

1. Clonar repositorio

$ git clone https://github.com/emunozmejias/multistage-dockerfile.git

2. Construir la imagen

$ git build -t multistage .

3. Revisar la imagen

$ docker images

4. Crear y ejecutar container

$ docker run -d -p 8081:8081 multistage

5 Probar la aplicación

$ curl http://localhost:8081/rest/mscovid/estadoMundial