## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ram_principal_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_principal_association) | resource |
| [aws_ram_resource_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_resource_association) | resource |
| [aws_ram_resource_share.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_resource_share) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_principals"></a> [principals](#input\_principals) | (Required) List of principals to associate with the resource share. Possible values are an AWS account ID, an AWS Organizations Organization ARN, or an AWS Organizations Organization Unit ARN. | `list(string)` | n/a | yes |
| <a name="input_resource_share_allow_external_principals"></a> [resource\_share\_allow\_external\_principals](#input\_resource\_share\_allow\_external\_principals) | (Optional) Indicates whether principals outside your organization can be associated with a resource share. | `bool` | `false` | no |
| <a name="input_resource_share_name"></a> [resource\_share\_name](#input\_resource\_share\_name) | (Required) The name of the resource share. | `string` | n/a | yes |
| <a name="input_resource_share_permission_arns"></a> [resource\_share\_permission\_arns](#input\_resource\_share\_permission\_arns) | (Optional) Specifies the Amazon Resource Names (ARNs) of the RAM permission to associate with the resource share. If you do not specify an ARN for the permission, RAM automatically attaches the default version of the permission for each resource type. You can associate only one permission with each resource type included in the resource share. | `set(string)` | n/a | yes |
| <a name="input_resources"></a> [resources](#input\_resources) | (Required) List of Amazon Resource Name (ARN) of the resource to associate with the RAM Resource Share. | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_principal_ids"></a> [principal\_ids](#output\_principal\_ids) | RAM Principal Association outputs |
| <a name="output_resource_ids"></a> [resource\_ids](#output\_resource\_ids) | RAM Resource Association outputs |
| <a name="output_resource_share_arn"></a> [resource\_share\_arn](#output\_resource\_share\_arn) | RAM Resoure Share outputs |
| <a name="output_resource_share_id"></a> [resource\_share\_id](#output\_resource\_share\_id) | n/a |
