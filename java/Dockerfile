FROM amazoncorretto:21
COPY . /app

WORKDIR /app

RUN ./mvnw clean install -Pno-transfer-progress > /dev/null 2>&1

CMD ./mvnw spring-boot:run