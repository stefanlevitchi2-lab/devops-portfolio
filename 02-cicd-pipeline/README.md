# 02. CI/CD Pipeline Automation

This project demonstrates Continuous Integration and Continuous Deployment (CI/CD) workflows built with **GitHub Actions**.

## 🛠 Pipeline Architecture

```text
[ Git Push / PR ] ──> [ Code Checkout ] ──> [ Static Analysis & Lint ] ──> [ Docker Build ] ──> [ Smoke Test ]