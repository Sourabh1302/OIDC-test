
output "iam_role_arn" {
  description = "The ARN of the IAM Role"
  value       = aws_iam_role.custom_role.arn
}

output "iam_policy_arn" {
  description = "The ARN of the IAM Policy"
  value       = aws_iam_policy.custom_policy.arn
}

