# 05. Monitoring & Observability Stack

An observability stack deploying **Prometheus** for metrics collection and **Grafana** for real-time visualization, orchestrated using Docker Compose.

---

## 🛠 Stack Components

| Service | Port | Description |
| :--- | :--- | :--- |
| **Prometheus** | `9090` | Time-series database for scraping and storing system metrics. |
| **Grafana** | `3000` | Analytics and interactive dashboard visualization platform. |

---

## 📁 File Structure

```text
05-monitoring-stack/
├── docker-compose.yml   # Container orchestration service definitions
├── prometheus.yml       # Scrape configuration & target rules
└── README.md            # Stack documentation
```

---

## 🚀 Getting Started

1. **Start the Monitoring Stack:**
   ```bash
   docker compose up -d
   ```

2. **Access the Interfaces:**
   - **Prometheus Targets & Metrics:** Open `http://localhost:9090`
   - **Grafana Dashboard:** Open `http://localhost:3000` *(Default login: `admin` / `admin`)*

3. **Verify Container Status:**
   ```bash
   docker compose ps
   ```

4. **Stop the Stack:**
   ```bash
   docker compose down
   ```

---

## 📈 Configuration Summary
- Prometheus scrapes self-metrics and container metrics every 15 seconds.
- Persistent Grafana configurations allow custom dashboard creation for system performance monitoring.

Clone the repository and run any component locally using Docker:

```bash
git clone [https://github.com/YOUR-USERNAME/devops-portfolio.git](https://github.com/YOUR-USERNAME/devops-portfolio.git)
cd devops-portfolio/01-containerization
docker compose up -d
