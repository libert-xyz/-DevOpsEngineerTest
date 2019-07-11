resource "aws_s3_bucket" "b" {
  bucket = "zypers-shared-docs"
  acl    = "private"

  tags = {
    Name        = "Name"
    Environment = "zypers-shared-docs"
  }
}
