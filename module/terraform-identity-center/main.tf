data "aws_ssoadmin_instances" "sso_admin" {}

resource "aws_identitystore_user" "organization_user" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.sso_admin.identity_store_ids)[0]

  display_name = var.display_name
  user_name = var.user_name
  title = var.title
  timezone = var.timezone

  name {
    given_name = var.given_name
    family_name = var.family_name
  }

  emails {
    primary = true
    value = var.emails
  }

  phone_numbers {
    primary = true
    value = var.phone_numbers
  }
}
