# syntax=docker/dockerfile:1

# Use PyTorch 1.12.1 for Stable Diffusion v1.4
FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime

# Set default workdir "/app"
WORKDIR /app

# Copy Stable Diffusion requirements
COPY ./requirements.txt /tmp/requirements.txt

# Install Python requirements
RUN ["pip", "install", "-r", "/tmp/requirements.txt"]
