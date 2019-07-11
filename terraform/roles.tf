### IAM Group


resource "aws_iam_group" "Zypers" {
  name = "Zypers"
  path = "/"
}


### Policy

resource "aws_iam_policy" "policy" {
  name        = "zypers-s3"
  path        = "/"
  description = "S3 access"

  policy = <<EOF

  {
    "Statement": [
      {
        "Effect": "Allow",
        "Action": ["s3:ListBucket", "s3:ListAllMyBuckets" ],
        "Resource": "arn:aws:s3:::*"
      },
      {
        "Effect": "Allow",
        "Action": ["s3:ListBucket","s3:GetObject"],
        "Resource": ["arn:aws:s3:::zypers-shared-docs", "arn:aws:s3:::zypers-shared-docs/*"],
        "Condition": {}
      }
    ]
EOF
}


## Atach Policy to Group

resource "aws_iam_group_policy_attachment" "attach" {
  group      =  Zypers
  policy_arn = "arn:policy
}
