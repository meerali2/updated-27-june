output "mongodb_instance_ids" {
  value = aws_instance.mongodb[*].id
}

output "mongodb_private_ips" {
  value = aws_instance.mongodb[*].private_ip
}
