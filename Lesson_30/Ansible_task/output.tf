output "instance_ip_addr" {
  value = join("\n", aws_instance.My-ACA-instance.*.public_ip)
}

