FROM ubuntu:20.04

WORKDIR /app

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y && \
    apt-get install -y python3.9 python3-pip python3.9-dev

COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade pip \
	&& pip install --no-cache-dir -r requirements.txt

COPY run.py ./
CMD python3 run.py