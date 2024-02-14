provider "aws" {
  region = aws_region # Ändern Sie dies entsprechend Ihrer Region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-example-bucket" # Ändern Sie dies zu einem eindeutigen Bucket-Namen
}

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.my_bucket.bucket
  key    = "index.html"
  acl    = "public-read"

  source = "index.html"
}
