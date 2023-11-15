# vpc variable
variable "vpc_cider" {
  default = "10.0.0.0/16"
  description = "value of vpc cider"
  type = string
}


variable "public_subnet_az1_cidr" {
  default = "10.0.0.0/24"
  description = "public subnet az1 cider"
  type = string
}

variable "public_subnet_az2_cidr" {
  default = "10.0.1.0/24"
  description = "public subnet az2 cider"
  type = string
}
variable "private_app_subnet_az1_cidr" {
  default = "10.0.2.0/24"
  description = "private app subnet az1 cider"
  type = string
}

variable "private_app_subnet_az2_cidr" {
  default = "10.0.3.0/24"
  description = "private app subnet az2 cider"
  type = string
}

variable "private_data_subnet_az1_cidr" {
  default = "10.0.4.0/24"
  description = "private data subnet az1 cider"
  type = string
}

variable "private_data_subnet_az2_cidr" {
  default = "10.0.5.0/24"
  description = "private data subnet az2 cider"
  type = string
}

# security group variables
variable "ssh_location" {
  default = "0.0.0.0/0"
  description = "the ip address that can ssh into the ec2 instance"
  type = string
}

#rds variables
variable "database_snapshot_identifier" {
  default = "arn:aws:rds:us-east-1:075029085137:snapshot:fleetcart-final-snapshot"
  description = "the database snapshot arn"
  type = string
}

variable "database_instance_class" {
  default = "db.t2.micro"
  description = "database instance type"
  type = string
}

variable "database_instance_identifier" {
  default = "dev-rds-db"
  description = "database instance identifier"
  type = string
}


variable "multi_az_deployment" {
  default = false
  description = "create a standby db instance"
  type = bool
}


# application load balancer variables
variable "ssl_certificate_arn" {
  default = "arn:aws:acm:us-east-1:075029085137:certificate/483ae604-f458-4274-97fd-cca1a575205b"
  description = "ssl certificate arn"
  type = string
}

# sns topic variables
variable "operator_email" {
  default = "ycarmack@protonmail.com"
  description = "a valid email address"
  type = string
}

# auto scaling group variables
variable "launch_template_name" {
  default = "dev-launch-template"
  description = "name of the launch template"
  type = string
}

variable "ec2_image_id" {
  default = "ami-087977d4dfc57c7fa"
  description = "id of the ami"
  type = string
}

variable "ec2_instance_type" {
  default = "t2.micro"
  description = "the ec2 instance type"
  type = string
}

variable "ec2_key_pair_name" {
  default = "my-ec2key2023"
  description = "name of the ec2 key pair"
  type = string
}