<!-- BEGIN_TF_DOCS -->
<!-- markdownlint-disable MD033 -->
# IAM Module

- Creating of IAM role.
- Creating of IAM policy.
- Attaching policy to Role.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.14 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.61.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.61.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.role_policy_attachment_arns](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.instance_assume_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_policy"></a> [create\_policy](#input\_create\_policy) | these variables allow creating the resource IAM policy | `bool` | `false` | no |
| <a name="input_create_role"></a> [create\_role](#input\_create\_role) | these variables allow creating the resource IAM role | `bool` | `false` | no |
| <a name="input_description_policy"></a> [description\_policy](#input\_description\_policy) | Description of the IAM policy. | `string` | `""` | no |
| <a name="input_identifiers_role"></a> [identifiers\_role](#input\_identifiers\_role) | list of service for aws | `list(string)` | <pre>[<br>  "ec2.amazonaws.com"<br>]</pre> | no |
| <a name="input_name_policy"></a> [name\_policy](#input\_name\_policy) | (Optional, Forces new resource) The name of the policy. If omitted, Terraform will assign a random, unique name. | `string` | `""` | no |
| <a name="input_path_policy"></a> [path\_policy](#input\_path\_policy) | (Optional) Path in which to create the policy. See IAM Identifiers for more information. | `string` | `"/"` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | all configuration of iam policy | `any` | `[]` | no |
| <a name="input_policy_arn"></a> [policy\_arn](#input\_policy\_arn) | list of ARN policies for attachment role | `list(string)` | `null` | no |
| <a name="input_policy_document"></a> [policy\_document](#input\_policy\_document) | The policy document. This is a JSON formatted string. | `string` | `null` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | (Optional, Forces new resource) Friendly name of the role. If omitted, Terraform will assign a random, unique name. See IAM Identifiers for more information. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | all tags for all recursives | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy_arn"></a> [policy\_arn](#output\_policy\_arn) | The ARN assigned by AWS to this policy. |
| <a name="output_policy_name"></a> [policy\_name](#output\_policy\_name) | The name of the policy. |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | Amazon Resource Name (ARN) specifying the role. |
| <a name="output_role_name"></a> [role\_name](#output\_role\_name) | Name of the role. |
<!-- END_TF_DOCS -->