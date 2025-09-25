package s3.policy

deny[msg] if {
  input.public == true
  msg := "S3 bucket is public. Public access is not allowed."
}
