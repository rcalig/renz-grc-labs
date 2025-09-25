package iam

deny[msg] if {
  stmt := input.Statement[_]
  stmt.Action == "*"
  msg := "IAM policy contains a wildcard Action (*) which is not allowed."
}
