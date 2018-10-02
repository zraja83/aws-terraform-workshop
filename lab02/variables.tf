variable "region" {
  description = "AWS Region where this infrastructure should be deployed"
  default = "us-west-2"
}

variable "identity" {
  description = "A unique name for your resources"
}

variable "ami" {
  description = "The Amazon Machine Image for new instances. Ubuntu 16.04 LTS Xenial HVM EBS"
  type        = "map"
    default = {
      us-west-1 = "ami-0ad16744583f21877"
      us-west-2 = "ami-0e32ec5bc225539f5"
      us-east-1 = "ami-059eeca93cf09eebd"
      us-east-2 = "ami-0782e9ee97725263d"
    }
}

variable "ingress_cidr" {
  description = "IP block from which connections to this instance will be made"
  default     = "0.0.0.0/0"
}

variable "num_webs" {
  description = "The number of servers to run"
  default     = "1"
}
