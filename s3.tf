resource "aws_s3_bucket" "main-bucket" {
  bucket    = "bucket"
  acl       = "private"

  tags = {
    Name = "main-bucket"
  }
}

resource "aws_s3_object" "object" {
  bucket = aws_s3_bucket.main-bucket.id
  key    = "files/text.txt"
  source = "files/text.txt"

  # The filemd5() function is available in Terraform 0.11.12 and later
  # For Terraform 0.11.11 and earlier, use the md5() function and the file() function:
  # etag = "${md5(file("path/to/file"))}"
  etag = filemd5("files/text.txt")
}