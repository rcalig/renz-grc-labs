package s3

deny[msg] if {
  input.public == true
  msg := "S3 bucket is public. Public access is not allowed."
}
