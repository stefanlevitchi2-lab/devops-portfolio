# devops-portfolio
Practical DevOps portfolio featuring hands-on implementations of containerization (Docker), automated CI/CD pipelines (GitHub Actions), Infrastructure as Code (Terraform/Ansible), and Linux/Python system automation tools.
# DevOps & Systems Automation Portfolio

Welcome! This repository serves as a practical showcase of production-ready infrastructure setups, deployment automation, and system monitoring tools. Every project inside is built using modular design patterns, security-first container configurations, and automated CI/CD testing.

### 🎯 Core Focus
- **Containerization & Orchestration:** Multi-stage Docker builds, non-root execution, Docker Compose stacks.
- **CI/CD Automation:** GitHub Actions workflows for linting, security scanning (Trivy), and automated image delivery.
- **Infrastructure as Code & Config Management:** Declarative cloud provisioning with Terraform and server setup using Ansible.
- **Scripting & Tooling:** Custom Python and Bash automation tools for system health checking and log parsing.
---

## 🛠 Tech Stack

- **Operating Systems & Scripting:** Linux (Ubuntu/Debian), Bash, Python
- **Containers & Orchestration:** Docker, Docker Compose
- **CI/CD Automation:** GitHub Actions
- **Infrastructure as Code:** Terraform
- **Monitoring & Observability:** Prometheus, Grafana

---

## 📁 Repository Structure & Projects

### 1. [`01-containerization/`](./01-containerization)
- **Overview:** Web application containerized with multi-stage Docker builds and orchestrated using Docker Compose.
- **Key Concepts:** Port mapping, non-root application execution, persistent container environment setup.

### 2. [`02-cicd-pipeline/`](./02-cicd-pipeline)
- **Overview:** Automated CI/CD pipeline built with GitHub Actions.
- **Key Concepts:** Automated code linting, unit testing, and Docker image build verification on every push.

### 3. [`03-infrastructure-as-code/`](./03-infrastructure-as-code)
- **Overview:** Declarative cloud infrastructure setup written in Terraform.
- **Key Concepts:** AWS EC2 provisioning, Security Group configuration, modular state/variable management.

### 4. [`04-automation-scripts/`](./04-automation-scripts)
- **Overview:** Python-based operational tool for system resource monitoring and health status checks.
- **Key Concepts:** System metrics collection, standalone execution, and containerized deployment.

### 5. [`05-monitoring-stack/`](./05-monitoring-stack)
- **Overview:** Observability stack deploying Prometheus and Grafana metrics visualization.
- **Key Concepts:** Metric scraping configurations, container service dependency management.

---

## 🚀 Quickstart

Clone the repository and run any component locally using Docker:

```bash
git clone [https://github.com/YOUR-USERNAME/devops-portfolio.git](https://github.com/YOUR-USERNAME/devops-portfolio.git)
cd devops-portfolio/01-containerization
docker compose up -d
