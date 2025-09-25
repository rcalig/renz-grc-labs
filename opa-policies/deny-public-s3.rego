package s3.policy

deny[msg] {
  input.public
  msg := "S3 bucket is public. Public access is not allowed."
}
