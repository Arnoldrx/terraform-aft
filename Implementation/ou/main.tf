module "terraform-identity-center" {
  source = "../../module/terraform-organization_unit(ou)"

  ou_name = "Workload"
}