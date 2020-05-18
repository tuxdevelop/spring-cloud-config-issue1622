# Default policy added to all apps

path "auth/token/lookup-self" {
  policy = "read"
}
path "secret/application" {
  capabilities = ["read"]
}

path "secret/application/*" {
  capabilities = ["read"]
}