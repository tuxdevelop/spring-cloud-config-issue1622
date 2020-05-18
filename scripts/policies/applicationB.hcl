path "secret/applicationB" {
  capabilities = ["read"]
}

path "secret/applicationB/*" {
  capabilities = ["read"]
}