FROM adoptopenjdk/openjdk11-openj9:alpine-jre

#Directorio con librerias
#RUN mkdir -p /app/dependency/
#Copiar librerias
#ADD target/dependency/ /app/dependency/
#Ejecutable con la aplicacion

COPY target/*.jar /app/app.jar

#Puerto que expone
EXPOSE 8080

#Comando que se ejecutra una vez ejecutemos el contendor
ENTRYPOINT java -Djava.security.egd=file:/dev/./urandom -jar /app/app.jar

