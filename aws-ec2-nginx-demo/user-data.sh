#!/bin/bash

set -euxo pipefail

dnf update -y

dnf install -y nginx

systemctl enable nginx
systemctl start nginx

cat <<EOF > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>My Terraform Demo</title>
</head>
<body>
    <h1>🚀 Terraform Deployment Successful!</h1>
    <p>This EC2 instance was provisioned using Terraform.</p>
    <p>Project: aws-ec2-nginx-demo</p>
    <p>Author: Manikandan Krishnamoorthi</p>
    <p>Position: Senior DevOps Engineer</p>
</body>
</html>
EOF