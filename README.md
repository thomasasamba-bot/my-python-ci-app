# 🚀 Python DevOps Demo - Complete CI/CD & Cloud Infrastructure

![CI Pipeline](https://github.com/thomasasamba-bot/python-devops-demo/actions/workflows/ci.yaml/badge.svg)
![Docker](https://img.shields.io/badge/Docker-✓-blue.svg)
![AWS](https://img.shields.io/badge/AWS-CloudFormation-orange.svg)
![Python](https://img.shields.io/badge/Python-3.10+-green.svg)

A comprehensive DevOps project demonstrating end-to-end CI/CD pipeline, containerization, and Infrastructure as Code (IaC) using AWS CloudFormation.

## 📋 Project Overview

This project showcases a complete DevOps workflow from local development to production deployment:

  - **Python Application** with unit tests and Flask web server
  - **Docker Containerization** with optimized multi-stage builds
  - **GitHub Actions CI/CD Pipeline** with automated testing and deployment
  - **AWS Infrastructure as Code** using CloudFormation
  - **Automated Deployment** to EC2 instances with zero-touch provisioning

## 🏗️ Architecture

  - A[Local Code] --> B[GitHub Repository]
  - B --> C[GitHub Actions CI/CD]
  - C --> D[Docker Hub Registry]
  - D --> E[AWS EC2 Instance]
  - E --> F[CloudFormation IaC]
  - F --> G[AWS S3 Storage]
  - E --> H[🌐 Production Application]

## 🏆 Skills Demonstrated
1. 🔧 DevOps & CI/CD
  - GitHub Actions workflows for automated testing and building
  - Docker containerization and image optimization
  - Continuous Integration/Deployment pipeline implementation
  - Automated testing with unittest framework

2. ☁️ Cloud & Infrastructure
  - AWS CloudFormation for Infrastructure as Code (IaC)
  - EC2 instance management and auto-deployment
  - S3 bucket configuration with versioning
  - IAM roles with least privilege security principles
  - VPC security groups with minimal open ports

3. 💻 Development
  - Python 3.10+ application development
  - Flask web framework implementation
  - Unit testing with comprehensive test coverage
  - Dependency management with requirements.txt
  - Python packaging with professional setup.py


## 🚀 Quick Start
### Prerequisites:
  - Python 3.10+
  - Docker
  - AWS CLI configured
  - GitHub account

1. Clone the Repository: \
git clone https://github.com/thomasasamba-bot/python-devops-demo.git\
cd python-devops-demo

2. Local Development
- Install dependencies: \
pip install -r src/requirements.txt

- Run tests: \
python -m unittest discover tests -v

- Run application locally: \
python src/main.py

3. Docker Containerization
- Build Docker image: \
docker build -t python-devops-demo:latest .

- Run container locally: \
docker run -p 80:80 python-devops-demo:latest

- Test application: \
curl http://localhost

4. AWS Deployment
 - Deploy complete infrastructure: \
aws cloudformation create-stack \
  --stack-name python-devops-demo \
  --template-body file://infrastructure/infrastructure.yaml \
  --parameters \
    ParameterKey=KeyName,ParameterValue=MyPythonAppKey \
    ParameterKey=BucketNamePrefix,ParameterValue=python-devops-demo \
    ParameterKey=InstanceType,ParameterValue=t3.micro \
  --capabilities CAPABILITY_IAM

## 📊 CI/CD Pipeline
  The GitHub Actions workflow automatically executes on every push:
  1. Testing Phase: Runs unit tests with unittest framework
  2. Build Phase: Builds Docker image with optimized layers
  3. Push Phase: Pushes image to Docker Hub registry
  4. Deployment Phase: Updates infrastructure via CloudFormation

### Pipeline Status
  ✅ Tests: All unit tests must pass \
  ✅ Build: Docker image builds successfully \
  ✅ Security: No known vulnerabilities \
  ✅ Deployment: Infrastructure updates complete \

## 🔐 Security Implementation
### Key Management
  - #### Generate EC2 key pair (never commit to version control)
  aws ec2 create-key-pair \
    --key-name MyPythonAppKey \
    --query 'KeyMaterial' \
    --output text > MyPythonAppKey.pem \
  chmod 400 MyPythonAppKey.pem

### Security Features
  ✅ Private S3 buckets with versioning enabled \
  ✅ Least privilege IAM roles for EC2 instances \
  ✅ Security groups with minimal port exposure \
  ✅ SSH key authentication only (no passwords) \
  ✅ Docker image scanning in CI pipeline

## 🌐 Access Endpoints
-   Service	          URL	                                                            Description
-  Web Application    http://<EC2_PUBLIC_IP>	                                        Flask web interface
-  Health Check	      http://<EC2_PUBLIC_IP>/health	                                  Application health status
-  S3 Console	        https://s3.console.aws.amazon.com/s3/buckets/<BUCKET_NAME>	    Cloud storage management

## 🧪 Testing Strategy
### Unit Tests
- Run all tests: \
python -m unittest discover tests -v

- Test coverage: \
python -m coverage run -m unittest discover tests -v \
python -m coverage report

### Integration Tests
- Test Docker build and run: \
docker build -t test-app . \
docker run -d -p 80:80 test-app \
curl http://localhost

## 📈 Monitoring & Logs
### Application Logs
- Docker container logs: \
docker logs python-ci-app

### Real-time logging
docker logs -f python-ci-app

### Infrastructure Logs
- CloudFormation stack status: \
aws cloudformation describe-stacks --stack-name python-devops-demo

- EC2 instance logs: \
aws ec2 get-console-output --instance-id <instance-id>

- S3 bucket contents: \
aws s3 ls s3://python-devops-demo-<account-id>

## 🧹 Cleanup & Cost Management
- Delete CloudFormation stack (deletes all resources except S3): \
aws cloudformation delete-stack --stack-name python-devops-demo 

- Manual S3 bucket cleanup (if needed): \
aws s3 rb s3://python-devops-demo-<account-id> --force

## 🎯 Learning Outcomes
This project provides hands-on experience with:
1. Infrastructure as Code with AWS CloudFormation
2. CI/CD Pipelines with GitHub Actions
3. Containerization Best Practices with Docker
4. Cloud Security Principles and IAM management
5. Automated Deployment Strategies for cloud environments
6. DevOps Best Practices and workflow automation

## 📝 License
MIT License - see LICENSE file for details.

## 🤝 Contributing
1. Fork the repository
2. Create a feature branch (git checkout -b feature/amazing-feature)
3. Commit changes (git commit -m 'Add amazing feature')
4. Push to branch (git push origin feature/amazing-feature)
5. Open a Pull Request

⭐ Star this repository if you found it helpful!