FROM python:3.11-slim

WORKDIR /app

# Copy monitoring script
COPY health_checker.py .

# Run as non-root user for security best practices
USER 1000:1000

CMD ["python", "health_checker.py"]