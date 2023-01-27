variable "instance_type" {
  type = string
  #default     = "t2.micro"
  description = "instance_type"
}


variable "availability_zone" {
  type        = string
  description = "availability_zone"
}


variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}


