  
variable "region" {
  description = "AWS region"
  default = "eu-west-2"
}

variable "role_arn" {
  description = "name to pass to Name tag"
  default = ""
}

variable "namespace" {
  description = <<EOH
this is the differantiates different deployment on the same subscription, every cluster should have a different value
EOH
  default = "andre_eks"
}



variable "owner" {
description = "IAM user responsible for lifecycle of cloud resources used for training"
default = "andre"
}

variable "created-by" {
description = "Tag used to identify resources created programmatically by Terraform"
default = "Terraform"
}

variable "sleep-at-night" {
description = "Tag used by reaper to identify resources that can be shutdown at night"
default = true
}

variable "TTL" {
description = "Hours after which resource expires, used by reaper. Do not use any unit. -1 is infinite."
default = "240"
}

variable "vpc_cidr_block" {
description = "The top-level CIDR block for the VPC."
default = "10.1.0.0/16"
}

variable "cidr_blocks" {
description = "The CIDR blocks to create the workstations in."
default = ["10.1.1.0/24", "10.1.2.0/24"]
}