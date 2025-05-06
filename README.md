# 🚀 Spring Boot Docker Demo (Gradle + Docker Compose)

This project demonstrates how to containerize a Spring Boot application using Docker and manage it with Docker Compose.

---

## 📦 Features

- Spring Boot 3.x app built with Gradle
- Dockerized with OpenJDK 17 base image
- JVM memory managed with `JAVA_OPTS`
- Docker Compose for easy orchestration
- Makefile for automation

---

## 🚧 Prerequisites

- Docker
- Docker Compose
- Java 17+
- Gradle (`./gradlew` is included)

---

## 🔧 Build and Run

### 🧱 1. Build the JAR
```bash
make build
```

### 🐳 2. Build Docker Image
```bash
make docker-build
```

### 🚀 3. Start App with Compose
```bash
make up
```

### 🛑 4. Stop App
```bash
make down
```

### 📜 5. View Logs
```bash
make logs
```

---

## 🌐 Access

Once running, open:
```
http://localhost:8080
```

Terminal output will also show:
```
Max JVM memory (MB): 512
```

---

## 🧼 Cleanup

Remove containers & images:
```bash
docker-compose down --rmi all --volumes --remove-orphans
```

---

## 📄 License

© Kavindu Senarathna
