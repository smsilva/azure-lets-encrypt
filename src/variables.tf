variable "common_name" {
  description = "The common name to use for the ACME certificate"
  type        = string
  default     = "*.sandbox.wasp.silvios.me"
}

variable "subject_alternative_names" {
  description = "The subject alternative names to use for the ACME certificate"
  type        = list(string)
  default = [
    "*.us1.sandbox.wasp.silvios.me",
    "*.us2.sandbox.wasp.silvios.me"
  ]
}

variable "dns_provider" {
  description = "The DNS provider to use for the ACME challenge"
  type        = string
  default     = "azuredns"
}

variable "acme_registration_email_address" {
  description = "The email address to use for the ACME registration"
  type        = string
  default     = "letsencrypt@silvios.me"
}

variable "acme_server_url" {
  description = "The URL of the ACME server to use for the Let's Encrypt service"
  type        = string
  default     = "https://acme-staging-v02.api.letsencrypt.org/directory"
}
