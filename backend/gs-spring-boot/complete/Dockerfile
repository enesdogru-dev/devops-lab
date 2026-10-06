FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp

# 1. 'spring' adında yetkisiz bir grup ve kullanıcı oluşturuyoruz
RUN addgroup -S spring && adduser -S spring -G spring

# 2. Konteynerin kontrolünü bu yetkisiz kullanıcıya veriyoruz
USER spring:spring

# 3. Uygulamayı kopyalayıp çalıştırıyoruz
COPY target/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
