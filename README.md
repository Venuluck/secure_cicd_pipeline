# 🔐 Secure DevSecOps CI/CD Pipeline

![GitHub last commit](https://img.shields.io/github/last-commit/Venuluck/secure_cicd_pipeline)
![GitHub repo size](https://img.shields.io/github/repo-size/Venuluck/secure_cicd_pipeline)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/Venuluck/secure_cicd_pipeline/devsecops-pipeline.yml?branch=main&label=build)
![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white)
![Kubernetes](https://img.shields.io/badge/Kubernetes-326CE5?logo=kubernetes&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-2088FF?logo=githubactions&logoColor=white)
![SonarQube](https://img.shields.io/badge/SonarQube-SAST-blue)
![Trivy](https://img.shields.io/badge/Trivy-Container%20Security-green)

---
## 📖 Overview

This project demonstrates a **production-style DevSecOps CI/CD pipeline** that integrates multiple security tools into the software development lifecycle.

The application is built using **Python Flask**, containerized with **Docker**, scanned using multiple security tools, and prepared for deployment to **Kubernetes** using **GitHub Actions**.

The primary goal of this project is to demonstrate modern DevSecOps practices including:

- Static Application Security Testing (SAST)
- Software Composition Analysis (SCA)
- Container Security
- Secure CI/CD
- Kubernetes Deployment
- Infrastructure as Code (Terraform - Optional)

---

# 🏗 Architecture

```text
                Developer
                    │
                    ▼
              GitHub Repository
                    │
                    ▼
            GitHub Actions Pipeline
                    │
     ┌──────────────┼──────────────┐
     │              │              │
     ▼              ▼              ▼
 SonarQube       Trivy       Dependency Check
   (SAST)     (Container)          (SCA)
     │              │              │
     └──────────────┼──────────────┘
                    │
                    ▼
            Docker Image Build
                    │
                    ▼
           Kubernetes Deployment
```

---

# 🚀 Tech Stack

| Technology | Purpose |
|------------|---------|
| Python Flask | Sample Web Application |
| Docker | Containerization |
| GitHub Actions | CI/CD |
| SonarQube | Static Code Analysis |
| Trivy | Container & IaC Security |
| OWASP Dependency Check | Dependency Vulnerability Scanning |
| Kubernetes (Kind) | Container Orchestration |
| Terraform | Infrastructure as Code (Optional) |

---

# 🔒 Security Features

✅ Static Application Security Testing (SAST)

✅ Container Image Scanning

✅ Software Composition Analysis (SCA)

✅ Infrastructure as Code Scanning

✅ Docker Security Best Practices

✅ Kubernetes Security Context

✅ Network Policies

✅ Automated Security Checks

---

# 📂 Project Structure

```
secure-cicd-pipeline
│
├── app/
│   ├── app.py
│   └── requirements.txt
│
├── reports/
│   ├── trivy/
│   └── dependency-check/
│
├── k8s/
│
├── terraform/
│
├── .github/
│   └── workflows/
│       └── secure-cicd.yml
│
├── Dockerfile
├── .dockerignore
├── .gitignore
├── sonar-project.properties
└── README.md
```

---

# ⚙️ Local Setup

## Clone Repository

```bash
git clone https://github.com/Venuluck/secure_cicd_pipeline.git

cd secure_cicd_pipeline
```

---

## Run Flask App

```bash
python -m venv venv

venv\Scripts\activate

pip install -r app/requirements.txt

python app/app.py
```

Visit:

```
http://localhost:5000
```

---

## Docker

Build Image

```bash
docker build -t secure-app .
```

Run Container

```bash
docker run -p 5000:5000 secure-app
```

---

# 🔎 Security Scanning

## SonarQube

```bash
sonar-scanner
```

---

## Trivy

```bash
trivy image secure-app
```

---

## OWASP Dependency Check

```bash
dependency-check --scan .
```

---

# ☸ Kubernetes Deployment

```bash
kind create cluster

kubectl apply -f k8s/

kubectl get pods
```

---

# 🔄 CI/CD Pipeline

The GitHub Actions pipeline performs the following steps:

- Checkout Repository
- Install Python Dependencies
- Build Docker Image
- Run SonarQube Scan
- Run Trivy Scan
- Run Dependency Check
- Upload Security Reports
- Deploy to Kubernetes

---

# 📊 Security Reports

Security reports are generated automatically inside:

```
reports/
```

- Trivy Report
- Dependency Check Report

---

# 📸 Screenshots

Add screenshots of:

- GitHub Actions Pipeline
- SonarQube Dashboard
- Trivy Scan
- Dependency Check Report
- Docker Build
- Kubernetes Pods

---

# 🎯 Learning Outcomes

This project demonstrates knowledge of:

- DevSecOps
- Secure CI/CD
- Docker Security
- Kubernetes
- GitHub Actions
- Container Security
- SAST
- Dependency Scanning
- Infrastructure as Code
- Cloud Security Fundamentals

---

# 👨‍💻 Author

**Venu Pydala**

GitHub:

https://github.com/Venuluck

LinkedIn:

https://www.linkedin.com/in/venu-p-24311b201/ 

---
