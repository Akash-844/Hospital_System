FROM maven:3.9.9-eclipse-temurin-17

WORKDIR /app

COPY . .

RUN mvn clean package

EXPOSE 8080

CMD ["mvn", "tomcat7:run", "-Dmaven.tomcat.port=8080"]