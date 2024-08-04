setup:
	set -o allexport ;\
	source .env ;\
	set +o allexport ;\

	@set -e ;\

	if [ ! -f .env ]; then\
		echo "Please copy '.env.sample' to '.env' and fill in the environment variables";\
		exit 1;\
	fi;\
	docker compose pull
	docker compose build
	docker compose up -d mlflow-db

up: setup
	docker compose up -d mlflow
	echo "Setup complete. API is now running at http://localhost:5000/"

build:
	docker compose build

down:
	docker compose down -v

stop:
	docker compose stop

db:
	docker compose up -d mlflow-db

mlflow:
	docker compose up -d mlflow-web
