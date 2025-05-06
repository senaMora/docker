# Project settings
IMAGE_NAME=springboot-docker-demo
JAR_NAME=demo-0.0.1-SNAPSHOT.jar
CONTAINER_NAME=springboot-demo-container

.PHONY: build clean docker-build up down logs

# 1. Build the JAR using Gradle
build:
	./gradlew build

# 2. Remove build artifacts
clean:
	./gradlew clean

# 3. Build Docker image
docker-build: build
	docker build -t $(IMAGE_NAME) .

# 4. Start with docker-compose (build image if needed)
up:
	docker-compose up --build -d

# 5. Stop and remove containers
down:
	docker-compose down

# 6. View container logs
logs:
	docker logs -f $(CONTAINER_NAME)
