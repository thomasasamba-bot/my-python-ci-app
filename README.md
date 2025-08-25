
![CI Pipeline](https://github.com/thomasasamba-bot/python-devops-demo.git/actions/workflows/ci.yaml/badge.svg)

🚀 Python DevOps Demo - Complete CI/CD & Cloud Infrastructure

A comprehensive DevOps project demonstrating end-to-end CI/CD pipeline, containerization, and Infrastructure as Code (IaC) using AWS CloudFormation.

📋 Project Overview

This project showcases a complete DevOps workflow:

Python Application with unit tests
Docker Containerization
GitHub Actions CI/CD Pipeline
AWS Infrastructure as Code (CloudFormation)
Automated Deployment to EC2 instances

🏗️ Architecture

GitHub → GitHub Actions → Docker Hub → EC2 ← CloudFormation → S3

📦 What's Included

1. Application Code

calculator.py - Business logic module
main.py - Flask web application
tests/test_calculator.py - Unit tests
requirements.txt - Python dependencies

2. Infrastructure as Code

infrastructure.yaml - CloudFormation template
Creates EC2 instance, S3 bucket, IAM roles, Security Groups

3. CI/CD Pipeline

.github/workflows/ci.yaml - GitHub Actions workflow
Automated testing, Docker builds, and deployments

4. Containerization

Dockerfile - Container configuration
Multi-stage build with testing

🔐 SSH Key Management

##Important: SSH private keys (.pem files) are never stored in this repository.

##Generating Keys:
aws ec2 create-key-pair --key-name MyPythonAppKey --query 'KeyMaterial' --output text > MyPythonAppKey.pem

chmod 400 MyPythonAppKey.pem

🚀 Features

✅ Python 3.10 application with Flask web server
✅ Unit Tests with unittest framework
✅ Docker Containerization with optimized image
✅ GitHub Actions CI/CD with automated testing
✅ AWS CloudFormation for infrastructure management
✅ EC2 Auto Deployment with UserData scripts
✅ S3 Integration for cloud storage
✅ IAM Security with least privilege principles

🛠️ Technologies Used

Python 3.10 + Flask
Docker + Docker Compose
GitHub Actions
AWS CloudFormation
EC2, S3, IAM, VPC
unittest testing framework

📁 Project Structure

my-python-ci-app/
├── .github/workflows/
│   └── ci.yaml                 # CI/CD Pipeline
├── infrastructure/            # CloudFormation templates
├── tests/
│   └── test_calculator.py     # Unit tests
├── calculator.py              # Business logic
├── main.py                    # Flask web app
├── Dockerfile                 # Container configuration
├── requirements.txt           # Dependencies
└── README.md                  # Documentation

🚀 Quick Start

1. Clone the Repository
git clone https://github.com/thomasasamba-bot/my-python-ci-app.git
cd my-python-ci-app

2. Run Tests Locally
python -m unittest discover tests -v

3. Build Docker Image
docker build -t my-python-ci-app:latest .

4. Run Container
docker run -p 80:80 my-python-ci-app:latest

5. Deploy to AWS
# Create CloudFormation stack
aws cloudformation create-stack \
  --stack-name python-ci-app-infra \
  --template-body file://infrastructure.yaml \
  --parameters \
    ParameterKey=KeyName,ParameterValue=MyKeyPair \
    ParameterKey=BucketNamePrefix,ParameterValue=my-python-ci-app \
    ParameterKey=InstanceType,ParameterValue=t3.micro \
  --capabilities CAPABILITY_IAM

📊 CI/CD Pipeline

The GitHub Actions workflow automatically:

On every push to main: Runs unit tests
On successful tests: Builds Docker image
Pushes image to Docker Hub
Deploys to EC2 instance via CloudFormation

🌐 Access Points

Web Application: http://[EC2_PUBLIC_IP]
Health Check: http://[EC2_PUBLIC_IP]/health
S3 Console: https://s3.console.aws.amazon.com/s3/buckets/[BUCKET_NAME]

🔧 Infrastructure Details

CloudFormation Creates:

EC2 Instance (t3.micro) with Docker
S3 Bucket for file storage
Security Group allowing HTTP (80) and SSH (22)
IAM Role with S3 access permissions
Auto Deployment via UserData scripts
Security Features:

✅ Least privilege IAM roles
✅ SSH key authentication only
✅ Private S3 bucket with versioning
✅ Security group with minimal open ports

🧪 Testing

# Run unit tests
python -m unittest discover tests -v

# Test Docker build
docker build -t test-app .

# Test container
docker run -p 80:80 test-app
curl http://localhost

📈 Monitoring & Logs

# Check application logs
docker logs python-ci-app

# Check EC2 instance logs
aws ec2 get-console-output --instance-id <instance id>

# Check CloudFormation status
aws cloudformation describe-stacks --stack-name python-ci-app-infra

🧹 Cleanup

# Delete CloudFormation stack (deletes all resources)
aws cloudformation delete-stack --stack-name python-ci-app-infra


🎯 Learning Outcomes

This project demonstrates:

1. Infrastructure as Code with CloudFormation
2. CI/CD Pipelines with GitHub Actions
3. Containerization best practices
4. Cloud Security principles
5. Automated Deployment strategies
6. DevOps Best Practices

📝 License

MIT License - see LICENSE file for details.

🤝 Contributing

Fork the repository
Create a feature branch
Make changes with tests
Submit a pull request

📞 Support

For issues and questions:

Create GitHub Issues
Check AWS CloudFormation documentation
Review GitHub Actions workflows