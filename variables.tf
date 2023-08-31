variable "vpc_id" {
  type = string
  description = "Vpc ID"
  default = "vpc-07c8d3469b22809e3"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "172.0.0.0/16"
}

variable "public_subnet_ids" {
  type = list
  default = ["subnet-021de939c96bb9790", "subnet-0fa8d2f64aa489736"]
}

variable "private_subnet_ids" {
  type = list
  default = ["subnet-0596b5e7a51a6b4b9", "subnet-0477a722681ae6d73"]
}

variable "routetable" {
  type = list
  default = ["rtb-0f37f0bb1caa5b9ec", "rtb-0354e2224794f00f3"]
}

variable "internetgateway_id" {
  type = string
  description = "Internet gateway"
  default = "igw-0b8ced56f5b11047f"
}

variable "networkacls_id" {
  type = string
  description = "Network ACLs"
  default = "acl-08a4c0e4e45b406bd"
}

variable "eksproject" {
  description = "Name of the project deployment."
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
