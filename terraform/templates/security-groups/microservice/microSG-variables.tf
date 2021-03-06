

variable "aws_key" {}
variable "aws_secret_key" {}
variable "aws_region" {
 default = "us-east-1"
}

variable "vpc_id" {
  description = "AWS ID of the VPC"
}
variable "vpc_name" {
  description = "Name tag of the VPC"
}
variable "publishedCallerPort" {
  description = "Published port over which service calls from callers can be made."
  default = "80"
}
variable "caller_security_group_id_list" {
  type = "list"
  description = "Specifies security group ids that are allowed to use this microservice"
}
variable "nbr_caller_security_groups" {
  description = "Length of the caller_security_group_id_list (because you currently can't use the 'length' interpolation to assign a 'count' value)"
}
variable "administratorSecurityGroupId" {
  description = "Administrator Security group assigned to the web server instance when it's launched"
}
