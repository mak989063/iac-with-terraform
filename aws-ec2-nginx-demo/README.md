# AWS EC2 Nginx Demo using Terraform

A beginner-friendly Infrastructure as Code (IaC) project that provisions an Amazon EC2 instance running Nginx using Terraform on AWS.

## Architecture

```text
             Internet
                  │
           Security Group
                  │
       EC2 (Amazon Linux 2023)
                  │
             Nginx Web Server
```

## Features

* Provision AWS EC2 using Terraform
* Automatically fetch the latest Amazon Linux 2023 AMI
* Create a Security Group allowing:

  * SSH (22)
  * HTTP (80)
* Bootstrap the EC2 instance using `user_data`
* Install and configure Nginx automatically
* Deploy a custom HTML landing page
* Use reusable variables, locals, outputs, and data sources
* Apply common resource tags using `default_tags`

## Project Structure

```text
aws-ec2-nginx-demo/
├── versions.tf
├── providers.tf
├── variables.tf
├── terraform.tfvars
├── locals.tf
├── data.tf
├── security-group.tf
├── ec2.tf
├── outputs.tf
├── user-data.sh
└── README.md
```

## Prerequisites

* Terraform
* AWS CLI
* AWS Account
* Configured AWS credentials/profile
* Existing EC2 Key Pair

## Usage

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

After deployment, Terraform outputs the public IP and web URL.

To remove all resources:

```bash
terraform destroy
```

## Technologies Used

* Terraform
* AWS EC2
* Amazon Linux 2023
* Nginx
* AWS Security Groups

## Learning Objectives

This project demonstrates:

* Infrastructure as Code (IaC)
* Terraform providers
* Variables and locals
* Data sources
* Resources
* Outputs
* User Data bootstrapping
* AWS EC2 provisioning
* Security Group configuration

## Future Enhancements

* Custom VPC
* Public and Private Subnets
* Internet Gateway
* NAT Gateway
* Application Load Balancer
* Auto Scaling Group
* Remote State using S3
* DynamoDB State Locking
* Terraform Modules
* GitHub Actions CI/CD

## Author

**Manikandan Krishnamoorthi**

Senior DevOps Engineer

