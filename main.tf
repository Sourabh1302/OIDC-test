resource "aws_iam_role" "custom_role" {
  name = var.iam_role_name

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        },
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "custom_policy" {
  name        = "CustomPolicy"
  description = "Custom policy for S3 access"

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Effect   = "Allow",
        Action   = ["s3:ListBucket", "s3:GetObject"],
        Resource = [
          "arn:aws:s3:::terraform-state-250225",
          "arn:aws:s3:::terraform-state-250225/*"
        ]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach_custom_policy" {
  role       = aws_iam_role.custom_role.name
  policy_arn = aws_iam_policy.custom_policy.arn
}
