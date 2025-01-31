FROM ollama/ollama:latest

# Copy the entry point script into the container
COPY entrypoint.sh /entrypoint.sh

# Make the script executable
RUN chmod +x /entrypoint.sh

# Set the entry point to the script
ENTRYPOINT ["/entrypoint.sh"]
