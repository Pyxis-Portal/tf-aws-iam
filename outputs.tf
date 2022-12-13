output "role_arn" {
  description = "Amazon Resource Name (ARN) specifying the role."
  value = element(concat(aws_iam_role.this.*.arn, [""]), 0)
}

output "role_name" {
  description = "Name of the role."
  value = element(concat(aws_iam_role.this.*.name, [""]), 0)
}

output "policy_name" {
  description = "The name of the policy."
  value = concat(aws_iam_policy.this.*.name, [""])
}

output "policy_arn" {
  description = "The ARN assigned by AWS to this policy."
  value = concat(aws_iam_policy.this.*.arn, [""])
}