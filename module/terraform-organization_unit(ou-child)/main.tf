
data "aws_organizations_organization" "child_ou" {}

resource "aws_organizations_organizational_unit" "organizational-unit" {
  for_each = toset(var.child_ou_name)
  name      = each.value
  parent_id = var.parent_id
}
