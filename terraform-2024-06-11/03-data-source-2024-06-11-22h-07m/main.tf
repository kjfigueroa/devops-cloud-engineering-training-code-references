provider "aws" {
  region  = "sa-east-1"
}

data "aws_s3_bucket" "bucket" {
  bucket = "kjfigueroa-test-11062024-01"
}

resource "aws_iam_policy" "my_bucket_policy" {
  name = "my-bucket-policy"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "${data.aws_s3_bucket.bucket.arn}"
      ]
    }
  ]
}
POLICY
}
