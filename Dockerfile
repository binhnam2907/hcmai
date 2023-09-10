FROM python:3.8.10-slim

RUN apt update

RUN apt-get install \
     'ffmpeg' \
     'libsm6' \
     'libxext6'  -y

COPY . /HCMAI2023

RUN cd HCMAI2023 &&  \
    pip3 install -r requirements.txt

WORKDIR /HCMAI2023

EXPOSE 5001
