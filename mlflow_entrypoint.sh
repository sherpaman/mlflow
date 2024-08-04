#!/bin/bash

mlflow server\
       --backend-store-uri postgresql://${DB_USER}:${DB_PASSWORD}@${DB_HOST}:${DB_PORT}/${DB_NAME}\
       --artifacts-destination ${S3_BUCKET_NAME}\
       --host 0.0.0.0