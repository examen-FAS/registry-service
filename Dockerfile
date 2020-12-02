FROM openjdk:11.0.9.1-slim
RUN addgroup --system spring && adduser --system spring --ingroup spring
USER spring:spring
ADD build/libs/registry-service-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE 8099
