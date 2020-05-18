path "secret/config-server" {
  capabilities = ["read"]
}

path "secret/config-server/*" {
  capabilities = ["read"]
}