module "tt1-account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "aws.acc.lab+${control_tower_parameters.AccountName}-lacapitale${formatdate("YYYYMMDD", timestamp()}@beneva.ca"
    AccountName               = "tt1"
    ManagedOrganizationalUnit = "test2"
    SSOUserEmail              = "aws.acc.lab+ssouser1-lacapitale20012022@beneva.ca"
    SSOUserFirstName          = "ssouser1"
    SSOUserLastName           = "ssouser1"
  }

  account_tags = {
    "ENV" = "labo"
    "CC"  = "12345"
    "PO"  = "Patrick Fortier"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

}
