# Use an official Ubuntu as a base image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Ollama CLI
RUN curl -sSL https://ollama.com/install.sh | bash

# Pull the model using Ollama
RUN ollama pull huihui_ai/qwen2.5-1m-abliterated:7b

# Set the default command to run Ollama
CMD ["ollama", "serve"]
