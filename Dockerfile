FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime

WORKDIR /app
COPY ./requirements.txt /tmp/requirements.txt

# CMD []
