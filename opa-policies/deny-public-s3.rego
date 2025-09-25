package s3.policy

# Deny rule: disallow any S3 bucket if it's marked public
deny[msg] {
  input.public == true
  msg := "S3 bucket is public. Public access is not allowed."
}
