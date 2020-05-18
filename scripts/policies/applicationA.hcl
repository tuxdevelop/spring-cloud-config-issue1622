path "secret/applicationA" {
  capabilities = ["read"]
}

path "secret/applicationA/*" {
  capabilities = ["read"]
}