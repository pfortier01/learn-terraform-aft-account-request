module "tete-account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.acc.lab+tete-lacapitale20012022@beneva.ca"
    AccountName               = "tete"
    ManagedOrganizationalUnit = "test2(ou-hqs3-85sc7rti)"
    SSOUserEmail              = "aws.acc.lab+ssouser1-lacapitale20012022@beneva.ca"
    SSOUserFirstName          = "ssouser1"
    SSOUserLastName           = "ssouser1"
  }

  account_tags = {
    "ENV"    = "labo"
    "CC"     = "12345"
    "Projet" = "projet tete"
    "PO"     = "Patrick Fortier"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "toto"
}
