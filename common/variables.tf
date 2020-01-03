variable "web_sq_name" {
  type = string
}

variable "rds_sg_name" {
  type = string
}

variable "port" {
  type = number
}

variable "cidr_blocks" {
  type = list(string)
}
