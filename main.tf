resource "aws_iam_role" "custom_role" {
  name = "GithubActionTestRole"

  assume_role_policy = jsonencode ({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        AWS = "arn:aws:iam::339712960538:user/Sourabh"
      }
      Action = "sts:AssumeRole"
    }]
})
}


resource "aws_iam_role_policy_attachment" "attach_policy" {
  role = aws_iam_role.custom_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
