module "server" {
  source = "./server"
  region       = "${var.region}"
  num_webs     = "${var.num_webs}"
  identity     = "${var.identity}"
  ami          = "${lookup(var.ami, var.region)}"
  ingress_cidr = "${var.ingress_cidr}"
}

