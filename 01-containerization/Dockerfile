# Build stage
FROM python:3.11-slim AS builder
WORKDIR /app
COPY app.py .

# Final runtime stage
FROM python:3.11-slim
WORKDIR /app
RUN useradd -m -u 1000 appuser
COPY --from=builder /app /app
USER appuser
EXPOSE 8080
CMD ["python", "app.py"]