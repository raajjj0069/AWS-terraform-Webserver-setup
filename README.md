# AWS Terraform WebServer Setup 🚀

This Terraform project automates the deployment of an AWS EC2 instance within a VPC. It sets up the necessary infrastructure, including public and private subnets, a security group, an internet gateway, and a route table, to host a web server running NGINX.

## Features ✨
- Deploys an EC2 instance in a public subnet with a public IP.
- Configures a security group to allow HTTP (port 80) traffic.
- Automates the installation and setup of NGINX using user data.
- Sets up a VPC with public and private subnets.
- Configures a route table with an internet gateway for public access.

## Prerequisites 🛠️
- Terraform installed on your system.
- An AWS account with credentials configured.
- Proper IAM permissions to create AWS resources.

## Usage 📝
1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/aws-terraform-webserver-setup.git
   cd aws-terraform-webserver-setup
   ```
2. Initialize Terraform:
   ```bash
   terraform init
   ```
3. Validate the configuration:
   ```bash
   terraform validate
   ```
4. Apply the configuration:
   ```bash
   terraform apply
   ```
   Confirm the changes by typing `yes` when prompted.

5. Retrieve the public IP of the EC2 instance:
   ```bash
   terraform output public_ip
   ```
   Use the public IP to access the web server in your browser.

## Cleanup 🧹
To clean up the resources created by this project:
```bash
terraform destroy
```

## Architecture Diagram 🏗️
- VPC: `10.0.0.0/16`
  - Public Subnet: `10.0.0.0/24`
  - Private Subnet: `10.0.1.0/24`
- Security Group: Allows HTTP traffic (port 80).
- EC2 Instance: Amazon Linux 2 with NGINX installed.


