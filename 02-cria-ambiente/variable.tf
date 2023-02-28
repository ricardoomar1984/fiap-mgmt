variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "default"
}

variable "cidr_vpc" {
  description = "CIDR block for the VPC"
  default     = "10.2.0.0/16"
}

variable "cidr_subnet01" {
  description = "CIDR block for the subnet"
  default     = "10.2.1.0/24"
}

variable "cidr_subnet02" {
  description = "CIDR block for the subnet"
  default     = "10.2.2.0/24"
}

variable "availability_zone1" {
  description = "availability zone to create subnet"
  default     = "us-east-1a"
}

variable "availability_zone2" {
  description = "availability zone to create subnet"
  default     = "us-east-1b"
}

variable "instance_type" {
  description = "type for aws EC2 instance"
  default     = "t2.micro"
}

variable "fiap-mgmt_tag" {
  description = "fiap-mgmt tags"
  default     = "fiap-mgmt tag"
}

