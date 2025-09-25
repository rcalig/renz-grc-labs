package k8s

# Deny if container uses 'latest' tag
deny[msg] if {
  container := input.spec.template.spec.containers[_]
  endswith(container.image, ":latest")
  msg := sprintf("Container %q uses the 'latest' image tag.", [container.name])
}

# Deny if container is privileged
deny[msg] if {
  container := input.spec.template.spec.containers[_]
  container.securityContext.privileged == true
  msg := sprintf("Container %q has privileged=true (not allowed).", [container.name])
}
