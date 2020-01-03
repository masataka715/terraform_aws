variable "security_group_name" {
  type = string
}

variable "port" {
  type = number
}

variable "cidr_blocks" {
  type = list(string)
}
