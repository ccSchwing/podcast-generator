FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git

RUN pip3 install PYYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoints.sh /entrypoints.sh

ENTRYPOINT [ "/entrypoints.sh" ]
