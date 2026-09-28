variable "aws_region" {
  description = "Target AWS deployment region"
  type        = string
  default     = "eu-central-1"
}

variable "instance_type" {
  description = "EC2 instance size"
  type        = string
  default     = "t2.micro"
}