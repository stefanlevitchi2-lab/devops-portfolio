# 05. Observability & Monitoring Stack

A production-ready observability environment utilizing **Prometheus** for metrics collection and **Grafana** for real-time visualization, containerized with **Docker Compose**.

---

## 📊 Live Dashboard Preview

<img width="2560" height="1338" alt="image" src="https://github.com/user-attachments/assets/a87ff394-5dfa-4dc1-8937-4001664c1e2e" />


---

## ✨ Features & Architecture

- **Prometheus:** Periodically scrapes HTTP telemetry and system metrics on port `9090`.
- **Grafana:** Visualizes metrics from Prometheus on port `3000` using pre-configured data sources.
- **Docker Network:** Isolated container networking allowing Grafana to securely query Prometheus via service DNS (`http://prometheus:9090`).

---

## 📁 File Structure

```text
05-monitoring-stack/
├── docker-compose.yml  # Multi-container stack (Prometheus & Grafana)
├── prometheus.yml      # Scrape configuration & targets
└── README.md           # Module documentation
```

---

## 🚀 How to Run

1. **Start the stack:**
   ```bash
   docker compose up -d
   ```

2. **Access the interfaces:**
   - **Grafana:** [http://127.0.0.1:3000](http://127.0.0.1:3000) (Login: `admin` / `admin`)
   - **Prometheus:** [http://127.0.0.1:9090](http://127.0.0.1:9090)

3. **Stop the stack:**
   ```bash
   docker compose down
   ```
