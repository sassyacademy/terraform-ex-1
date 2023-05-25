variable "vpc_cidr_block" {
  description = "CIDR block for the vpc"
  type        = string
  default     = "10.0.0.0/24"
}

variable "subnet_cidr_blocks" {
  description = "CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.0.0.0/26", "10.0.0.64/26", "10.0.0.128/26", "10.0.0.192/26"]
}

variable "route_table_names" {
  description = "Names for the route tables"
  type        = list(string)
  default     = ["route-table-1", "route-table-2",]
}

