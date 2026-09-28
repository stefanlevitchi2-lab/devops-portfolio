# 04. System Automation & Health Checker

A lightweight, containerized Python automation tool for real-time system metrics monitoring, resource threshold checks, and operational logging.

---

## ✨ Features

- **Resource Monitoring:** Tracks CPU utilization percentage, RAM consumption, and disk space availability.
- **Service Verification:** Performs automated HTTP status checks against target endpoints.
- **Alert Logging:** Outputs formatted system health logs with customizable alert thresholds.
- **Containerized:** Packaged with Docker for seamless execution across any Linux/OS environment.

---

## 📁 File Structure

```text
04-automation-scripts/
├── health_checker.py   # Core Python monitoring script
├── Dockerfile          # Minimal container packaging
└── README.md           # Project documentation
```

---

## 🚀 How to Run

### Method 1: Direct Python Execution
```bash
python health_checker.py
```

### Method 2: Containerized Run (Recommended)
1. **Build the Docker Image:**
   ```bash
   docker build -t system-health-checker .
   ```

2. **Execute the Monitoring Container:**
   ```bash
   docker run --rm system-health-checker
   ```

---

## 📊 Sample Output

```text
[INFO] Starting System Health Inspection...
[OK]   CPU Usage: 14.2% (Threshold: < 80%)
[OK]   RAM Usage: 42.8% (Threshold: < 85%)
[OK]   Disk Usage: 58.1% (Threshold: < 90%)
[OK]   Target Service Endpoint: HTTP 200 OK
[INFO] Health Inspection Completed Successfully.
```
