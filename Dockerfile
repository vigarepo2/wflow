FROM ollama/ollama:latest

# Pull the specific model
RUN ollama pull huihui_ai/qwen2.5-1m-abliterated:7b
