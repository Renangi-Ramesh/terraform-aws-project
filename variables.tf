variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "ap-south-1"
}
variable "project_name" {
  description = "Prefix used for resource names"
  type        = string
  default     = "devops-lab"
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
variable "public_subnet_cidr" {
  type    = string
  default = "10.0.1.0/24"
}
variable "instance_type" {
  type    = string
  default = "t3.micro"
}
variable "admin_cidr" {
  description = "Your public IP in CIDR notation, e.g. 203.0.113.10/32. Never use 0.0.0.0/0 for SSH."
  type        = string
}
