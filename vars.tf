variable "name" {}
variable "internal" {}
variable "load_balancer_type" {}
variable "subnets" {}
variable "enable_deletion_protection" {
  default = false
}
variable "env" {}
variable "cidr_block" {}