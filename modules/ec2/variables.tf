variable "ec2_count" {
	default = 1
}

variable "ami_id" {
	default = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
	type = string
}

variable "instance_type" {
	type = string
	default = "t2.micro"
}

variable "subnet_id" {
  
}
 
