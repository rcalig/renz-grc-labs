package main

# Deny if any container uses the 'latest' image tag
deny[msg] {
  container := input.spec.template.spec.containers[_]
  endswith(container.image, ":latest")
  msg := sprintf("Container %q uses the 'latest' image tag.", [container.name])
}

# Deny if any container is privileged
deny[msg] {
  cont := input.spec.template.spec.containers[_]
  cont.securityContext.privileged == true
  msg := sprintf("Container %q has privileged=true (not allowed).", [cont.name])
}
