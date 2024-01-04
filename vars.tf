variable "name" {}
variable "internal" {}
variable "load_balancer_type" {}
variable "subnets" {
  type = set(string)
  default = []
}
variable "enable_deletion_protection" {
  default = false
}
variable "env" {}