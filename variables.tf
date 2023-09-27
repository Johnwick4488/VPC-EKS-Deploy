variable "vpc_id" {
  type = string
  description = "Vpc ID"
  default = "vpc-03a9bc480d13fb28c"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "172.0.0.0/16"
}

variable "public_subnet_ids" {
  type = list
  default = ["subnet-0ed3a432129e37777", "subnet-09089b994b817cdff"]
}

variable "private_subnet_ids" {
  type = list
  default = ["subnet-04697e699c9cd7afd", "subnet-0276498f851cf3a6a"]
}

variable "routetable" {
  type = list
  default = ["rtb-0e8b344814015d957", "rtb-0f4113f2447f21566"]
}

variable "internetgateway_id" {
  type = string
  description = "Internet gateway"
  default = "igw-064d67b6e96cdf612"
}

variable "networkacls_id" {
  type = string
  description = "Network ACLs"
  default = "acl-06f48a8352a9d35f8"
}

variable "eksproject" {
  description = "Name of the project deployment."
  type = string
  default = "Johnwick"
}

variable "aws_security_group" {
  description = "Security group rule"
  type = string
  default = "sg-0e52de3b486ae0b61"
}

variable "aws_s3_bucket" {
  description = "s3 bucket name"
  type = string
  default = "my-personal-bucket0000044"
}

variable "cluster_name" {
  description = "cluster name"
  type = string
  default = "Johnwick"
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    "Project"     = "JohnwickProject"
    "Environment" = "Development"
    "Owner"       = "Santosh4488"
  }
}
