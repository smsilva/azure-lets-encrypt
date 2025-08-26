# azure-lets-encrypt

Para rodar o exemplo, pode criar um arquivo `src/terraform.auto.tfvars`:

```hcl
common_name = "*.sandbox.wasp.silvios.me"

subject_alternative_names = [
  "*.us1.sandbox.wasp.silvios.me",
  "*.us2.sandbox.wasp.silvios.me"
]

acme_registration_email_address = "letsencrypt@silvios.me"

acme_server_url = "https://acme-staging-v02.api.letsencrypt.org/directory"
```

Para gerar um certificado Let's Encrypt válido, é preciso usar o servidor `https://acme-v02.api.letsencrypt.org/directory`.
