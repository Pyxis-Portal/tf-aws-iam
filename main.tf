locals {

  tags = {
    Terraform = true
  }
}

data "aws_iam_policy_document" "instance_assume_role_policy" {
  count = var.create_role ? 1 : 0

  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = var.identifiers_role
    }
  }
}

resource "aws_iam_role" "this" {
  count = var.create_role ? 1 : 0

  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.instance_assume_role_policy[0].json

  tags = merge(
    local.tags,
    var.tags
  )
}

resource "aws_iam_role_policy_attachment" "role_policy_attachment_arns" {
  count = length(var.policy_arn) > 0 && var.create_role ? length(var.policy_arn) : 0

  role       = element(concat(aws_iam_role.this.*.name, [""]), 0)
  policy_arn = element(var.policy_arn, count.index)
}

resource "aws_iam_role_policy_attachment" "policy_attachment" {
  count = length(concat(aws_iam_policy.this.*.arn, [])) > 0 && var.create_role  &&  var.create_policy ? length(concat(aws_iam_policy.this.*.arn, [])) : 0

  role       = element(concat(aws_iam_role.this.*.name, [""]), 0)
  policy_arn = element(concat(aws_iam_policy.this.*.arn, []), count.index)

  depends_on = [
    aws_iam_role.this,
    aws_iam_policy.this
  ]
}

resource "aws_iam_policy" "this" {
  count = var.create_policy ? 1 : 0

  name        = var.name_policy
  path        = var.path_policy
  description = var.description_policy
  policy      = var.policy_document
}