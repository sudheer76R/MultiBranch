FROM maven:amazoncorretto as build
WORKDIR /javaapp
COPY . .
RUN mvn clean install

FROM adhig93/tomcat-conf
COPY --from=build /javaapp/target/*.war /usr/local/tomcat/webapps/
