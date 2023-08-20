module "terraform-child-organization-unit" {
  source = "../../module/terraform-organization_unit(ou-child)"

  child_ou_name = [ "DEV", "Staging", "Prod" ]
  parent_id = "ou-i552-07f15rqf"
}