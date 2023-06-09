variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_key_path" {}
variable "aws_key_name" {}

variable "aws_region" {
  default = "us-east-1"
}

variable "network" {
  default = "10.10"
}

variable "offset" {
  default = ""
}

variable "aws_vpc_id" {}
variable "aws_internet_gateway_id" {}
variable "aws_route_table_public_id" {}
variable "aws_route_table_private_id" {}
variable "aws_subnet_cfruntime-1a_availability_zone" {
  default = "us-east-1a"
}
variable "aws_subnet_cfruntime-2b_availability_zone" {
  default = "us-east-1b"
}

variable "aws_ubuntu_ami" {
  default = {
    us-east-1      = "ami-98aa1cf0"
    us-west-1      = "ami-736e6536"
    us-west-2      = "ami-37501207"
    ap-northeast-1 = "ami-df4b60de"
    ap-southeast-1 = "ami-2ce7c07e"
    ap-southeast-2 = "ami-1f117325"
    eu-west-1      = "ami-f6b11181"
    sa-east-1      = "ami-71d2676c"
  }
}

variable "aws_centos_ami" {
  default = {
    us-east-1      = "ami-00a11e68"
    us-west-1      = "ami-e04b7aa5"
    us-west-2      = "ami-3425be04"
    ap-northeast-1 = "ami-9392dc92"
    ap-southeast-1 = "ami-dcbeed8e"
    ap-southeast-2 = "ami-89e88db3"
    eu-west-1      = "ami-af6faad8"
    sa-east-1      = "ami-73ee416e"
  }
}
