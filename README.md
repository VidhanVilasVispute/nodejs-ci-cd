

# Node.js Demo App - CI/CD Pipeline

🚀 **DevOps Internship Task 1**: Automated code deployment using GitHub Actions CI/CD pipeline.

## 📋 Project Overview

This project demonstrates a CI/CD pipeline implementation using GitHub Actions to automatically build, test, and deploy a Node.js web application. The application is containerized using Docker and pushed to DockerHub for deployment.

## 🛠️ Tech Stack

* **Backend**: Node.js, Express.js
* **Containerization**: Docker
* **CI/CD**: GitHub Actions
* **Registry**: DockerHub
* **Frontend**: HTML, CSS, JavaScript

## 🏗️ Architecture

```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   Development   │───▶│   GitHub Repo   │───▶│ GitHub Actions  │
└─────────────────┘    └─────────────────┘    └─────────────────┘
                                                        │
                                                        ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   Deployment    │◀───│   DockerHub     │◀───│   Build & Test  │
└─────────────────┘    └─────────────────┘    └─────────────────┘
```

## 📁 Project Structure

```
nodejs-demo-app/
├── .github/workflows/
│   └── main.yml                 # CI/CD workflow configuration
├── public/
│   └── index.html              # Frontend application
├── server.js                   # Main application server
├── package.json                # Node.js dependencies and scripts
├── Dockerfile                  # Container configuration
├── .gitignore                 # Git ignore rules
└── README.md                  # Project documentation
```

## 🚀 Features

### Application Features

* **RESTful API**: Basic health check endpoints
* **Dockerized**: Containerized Node.js app for easy deployment

### CI/CD Pipeline Features

* **Automated Build**: Builds app on every push to main branch
* **Node.js Version Setup**: Uses Node.js 16 in workflow, but local development uses Node.js 20+
* **Manual DockerHub Login**: DockerHub login uses manual password (not token) via GitHub Secrets
* **Docker Build and Push**: Builds and pushes Docker image to DockerHub registry

## 🔧 Setup Instructions

### Prerequisites

* Node.js 20+ (local development)
* Docker
* GitHub account
* DockerHub account

### Local Development

1. **Clone the repository**

   ```bash
   git clone https://github.com/yourusername/nodejs-demo-app.git
   cd nodejs-demo-app
   ```

2. **Install dependencies**

   ```bash
   npm install
   ```

3. **Run the application**

   ```bash
   npm start
   ```

### Docker Deployment

1. **Build Docker image**

   ```bash
   docker build -t yourdockerhubusername/nodejs-app:latest .
   ```

2. **Run container**

   ```bash
   docker run -p 3000:3000 yourdockerhubusername/nodejs-app:latest
   ```

## ⚙️ CI/CD Pipeline Configuration

### GitHub Actions Workflow Highlights

* Triggers on push to `main` branch
* Runs on `ubuntu-latest`
* Checks out code
* Sets up Node.js version 16 (for compatibility)
* Installs dependencies using `npm install`
* Runs placeholder test command (`echo "No tests available"`)
* Logs into DockerHub manually using password stored in GitHub Secrets (not token)
* Builds Docker image tagged as `${{ secrets.DOCKER_USERNAME }}/nodejs-app:latest`
* Pushes Docker image to DockerHub

### GitHub Secrets Needed

* `DOCKER_USERNAME`: Your DockerHub username
* `DOCKER_PASSWORD`: Your DockerHub account password (Token stored )

## 📋 What We Did Today: Step-by-Step Summary

1. **Configured Node.js GitHub Action workflow** to automate CI/CD for Node.js app.
2. **Set up Node.js environment with version 16** in the pipeline despite using Node 20+ locally to maintain compatibility with action defaults.
3. **Installed project dependencies using `npm install`** within the pipeline.
4. **Added a placeholder step for tests** since no test scripts were available yet.
5. **Configured DockerHub login step manually using password secret**, instead of an access token.
6. **Built Docker image of the Node.js app in the pipeline.**
7. **Pushed the Docker image to DockerHub registry using GitHub Actions.**
8. **Observed build failure due to incorrect credentials / environment and corrected by providing manual DockerHub password and confirming Node.js version differences.**
9. **Verified that the pipeline now completes successfully with Docker image pushed.**
10. **Updated README to document the entire process and instructions clearly.**

## 📄 Author

Vidhan Vilas Vispute

---

**Built with ❤️ for DevOps Internship Task**
*Demonstrating Node.js CI/CD pipeline with manual DockerHub login and Docker container deployment.*

