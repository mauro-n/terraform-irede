resource "aws_s3_bucket" "iredebucket" {
  bucket = "iredebucket"
  tags = {
    Name        = "iredebucket"
    Environment = "Test"
  }
}
