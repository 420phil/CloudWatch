resource "aws_iam_role" "cw_ct_example_role" {
  name = "cw-ct-example-role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "example_role_attachment_cloudwatch" {
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchFullAccess"
  role       = aws_iam_role.example_role.name
}

resource "aws_iam_role_policy_attachment" "example_role_attachment_cloudtrail" {
  policy_arn = "arn:aws:iam::aws:policy/AWSCloudTrailFullAccess"
  role       = aws_iam_role.example_role.name
}
