output "public_ip" {
  value = ["${aws_instance.web.*.public_ip}"]
}

output "public_dns" {
  value = ["${aws_instance.web.*.public_dns}"]
}

output "public_key" {
  value     = "${tls_private_key.ssh-key-pair.public_key_openssh}"
  sensitive = true
}

output "private_key" {
  value     = "${tls_private_key.ssh-key-pair.private_key_pem}"
  sensitive = true
}
