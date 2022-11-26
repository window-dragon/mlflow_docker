FROM ubuntu:20.04

ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8
ENV TZ=Asia/Seoul

RUN apt-get clean && \
    apt-get update -y && \
    apt-get install -y python3 python3-pip build-essential git libpq-dev

COPY ./requirements.txt ./
RUN python3 -m pip install -r ./requirements.txt

CMD mlflow server --host 0.0.0.0 --backend-store-uri ${DB_URL} --artifacts-destination s3://${AWS_BUCKET_NAME} --gunicorn-opts "--timeout 600"
