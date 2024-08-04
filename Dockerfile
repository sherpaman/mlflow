FROM python:3.10

WORKDIR /mlflow
RUN apt-get update -y && apt-get dist-upgrade -y && apt-get install -y libpq-dev
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY ./mlflow_entrypoint.sh .
CMD ["bash", "./mlflow_entrypoint.sh"]]
