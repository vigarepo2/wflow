#!/bin/bash
# Start the ollama service in the background
ollama serve &
# Wait for the service to start
sleep 5
# Pull the desired model
ollama pull huihui_ai/qwen2.5-1m-abliterated:7b
# Keep the container running
tail -f /dev/null
