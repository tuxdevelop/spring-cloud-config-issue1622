#!/bin/bash

#exports
export VAULT_ADDR='http://127.0.0.1:8200'

#enable kv1
vault secrets enable -version=1 kv
vault secrets move secret/ kv2/
vault secrets move kv/ secret/

#write policies
vault policy write default ./policies/default.hcl
vault policy write applicationA ./policies/applicationA.hcl
vault policy write applicationB ./policies/applicationB.hcl
vault policy write config-server ./policies/config-server.hcl
#write secrets
vault write secret/applicationA @secrets/applicationA.json
vault write secret/applicationB @secrets/applicationB.json
vault write secret/config-server @secrets/config-server.json
#create application tokens
# not renewable and ttl of 24h
vault token create -policy=default -policy=applicationA -renewable=false -ttl=1440m 1>applicationA.txt
vault token create -policy=default -policy=applicationB -renewable=false -ttl=1440m 1>applicationB.txt
vault token create -policy=default -policy=config-server -renewable=false -ttl=1440m 1>config-server.txt
