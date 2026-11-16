# AWS Infrastructure with Terraform

A learning project that provisions a small AWS web environment using Terraform.

> **Status:** Example configuration added for learning and review. It has not been applied to an AWS account or validated in a live environment. Run `terraform fmt` and `terraform validate` locally before use.

## Architecture

- VPC with one public subnet
- Internet Gateway and public route table
- EC2 instance running Nginx on Amazon Linux 2023
- Security group allowing HTTP publicly and SSH only from a configurable admin CIDR
- S3 bucket with a random suffix

## Prerequisites

- Terraform >= 1.5
- AWS CLI configured with credentials for a suitable IAM identity
- An AWS account; charges may apply while resources are running

## Deploy

```bash
terraform init
cp terraform.tfvars.example terraform.tfvars
# Edit admin_cidr to your own public IP with /32
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
```

Open the `website_url` output after apply.

## Clean up

```bash
terraform destroy
```

Review the plan carefully before applying or destroying resources. Do not commit real credentials, state files, or personal `terraform.tfvars`.

## Security notes

- SSH is restricted to `admin_cidr`; set it to your own trusted public IP.
- The sample uses HTTP only. Add TLS and a load balancer before treating this as production infrastructure.
- Use least-privilege IAM credentials and enable billing alerts.

## Author

Maintained as a personal AWS/Terraform learning project by Ramesh Renangi.
