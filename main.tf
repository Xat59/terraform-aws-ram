
resource "aws_ram_resource_share" "this" {
  name                      = var.resource_share_name
  allow_external_principals = var.resource_share_allow_external_principals
  permission_arns           = var.resource_share_permission_arns
}

resource "aws_ram_principal_association" "this" {
  for_each           = toset(var.principals)
  principal          = each.value
  resource_share_arn = aws_ram_resource_share.this.arn
}

resource "aws_ram_resource_association" "this" {
  for_each           = toset(var.resources)
  resource_arn       = each.value
  resource_share_arn = aws_ram_resource_share.this.arn
}
