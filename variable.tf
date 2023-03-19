variable "username" {}
variable "password" {}

variable "allocated_storage" {
  default = 20
}

variable "max_allocated_storage" {
  default = 100
}

variable "storage_type" {
  default = "gp2"
}

variable "engine" {
  default = "mysql"
}

variable "engine_version" {
  default = "8.0"
}

variable "instance_class" {
  default = "db.t2.micro"
}

variable "db_name" {
  default = "uc_db"
}

variable "port" {
  type    = number
  default = 3306
}

variable "db_subnet_group_name" {
    default = "vpc-0f34e09d79b50b43d"
}

variable "publicly_accessible" {
  type    = bool
  default = true
}