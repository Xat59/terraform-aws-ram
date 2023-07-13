# RAM Resoure Share outputs
output "resource_share_arn" {
  value = aws_ram_resource_share.this.arn
}

output "resource_share_id" {
  value = aws_ram_resource_share.this.id
}

# RAM Principal Association outputs
output "principal_ids" {
  value = [for pid in aws_ram_principal_association.this : pid.id]
}

# RAM Resource Association outputs
output "resource_ids" {
  value = [for resource_id in aws_ram_resource_association.this : resource_id.id]
}