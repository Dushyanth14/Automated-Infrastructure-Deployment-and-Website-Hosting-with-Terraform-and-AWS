# Automated Infrastructure Deployment and Website Hosting with Terraform and AWS

## Project Description
Designed and deployed a Virtual Private Cloud (VPC) on AWS using Terraform for automated infrastructure provisioning. Configured a public subnet for hosting and a private subnet for secure backend resources. Deployed a website on an EC2 instance in the public subnet, ensuring optimal connectivity and security. This project demonstrated proficiency in Infrastructure as Code (IaC) principles, network design, and cloud resource management.

## Features
- **VPC**: A custom VPC with CIDR block `10.0.0.0/16`.
- **Subnets**:
  - Public Subnet: `10.0.1.0/24`
  - Private Subnet: `10.0.2.0/24`
- **Internet Gateway**: Allows public access to the EC2 instance.
- **Route Table**: Routes traffic to the internet via the gateway.
- **EC2 Instance**:
  - AMI: `ami-06b21ccaeff8cd686`
  - Instance Type: `t2.micro`
  - Software: Nginx web server.
- **Security Group**: Allows HTTP traffic (port 80) from anywhere.

## Prerequisites
- AWS Account
- Terraform installed on your local machine
- An existing key pair in AWS for SSH access
