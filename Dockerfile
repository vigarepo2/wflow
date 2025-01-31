# Use an official Ubuntu as a base image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Ollama CLI
RUN curl -sSL https://ollama.com/install.sh | bash

# Set the default command to run Ollama and pull the model
CMD ollama serve & \
    sleep 5 && \
    ollama pull huihui_ai/qwen2.5-1m-abliterated:7b && \
    ollama serve
