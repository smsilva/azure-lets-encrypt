resource "acme_registration" "default" {
  email_address = var.acme_registration_email_address
}

resource "acme_certificate" "default" {
  account_key_pem           = acme_registration.default.account_key_pem
  common_name               = var.common_name
  subject_alternative_names = var.subject_alternative_names

  dns_challenge {
    provider = var.dns_provider
  }
}

output "private_key_pem" {
  value     = acme_certificate.default.private_key_pem
  sensitive = true
}

output "certificate_pem" {
  value     = acme_certificate.default.certificate_pem
  sensitive = true
}

output "issuer_pem" {
  value     = acme_certificate.default.issuer_pem
  sensitive = true
}
