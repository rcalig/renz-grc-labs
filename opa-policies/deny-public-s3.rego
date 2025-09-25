package s3

default deny := []

deny[msg] if {
  input.public == true
  msg := "S3 bucket is public. Public access is not allowed."
}
