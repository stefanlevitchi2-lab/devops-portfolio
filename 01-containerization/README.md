# 01. Containerization & Multi-Container Application

This project demonstrates core containerization principles by packaging a lightweight Python application into an optimized Docker container and managing service orchestration using **Docker Compose**.

---

## ✨ Key Features

- **Lightweight Footprint:** Built on `python:3.11-slim` to reduce image size and attack surface.
- **Service Orchestration:** Managed via `docker-compose.yml` for predictable multi-container lifecycle management.
- **Isolated Networking:** Configured port mapping exposing the internal application to port `8080` on the host.

---

## 📁 File Structure

```text
01-containerization/
├── app.py              # Lightweight Python web server
├── Dockerfile          # Container image build instructions
├── docker-compose.yml  # Multi-container service definition
└── README.md           # Project documentation
```

---

## 🚀 How to Run

### Option 1: Using Docker Compose (Recommended)

1. **Start the service in detached mode:**
   ```bash
   docker compose up -d
   ```

2. **Verify application status:**
   ```bash
   curl http://localhost:8080
   ```

3. **Stop and remove containers:**
   ```bash
   docker compose down
   ```

---

### Option 2: Using Docker CLI Directly

1. **Build the Docker Image:**
   ```bash
   docker build -t containerized-app:latest .
   ```

2. **Run the Container:**
   ```bash
   docker run -d -p 8080:8080 --name my-app containerized-app:latest
   ```

3. **Stop and Clean Up:**
   ```bash
   docker stop my-app
   docker rm my-app
   ```
