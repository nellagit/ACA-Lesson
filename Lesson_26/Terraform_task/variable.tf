variable "instance_type" {
  type = string
  #default     = "t2.micro"
  description = "instance_type"
}


variable "availability_zone1" {
  type        = string
  description = "availability_zone1"
}

variable "availability_zone2" {
  type        = string
  description = "availability_zone2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnet1_cidr" {
  default = "10.0.1.0/24"
}

variable "subnet2_cidr" {
  default = "10.0.2.0/24"
}
