FROM ollama/ollama:latest
ENV OLLAMA_HOST=0.0.0.0
EXPOSE 11434
RUN ollama serve & sleep 5 && ollama pull llama3
CMD ["ollama", "serve"]
