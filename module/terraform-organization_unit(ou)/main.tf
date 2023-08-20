data "aws_organizations_organization" "ou" {}

resource "aws_organizations_organizational_unit" "organizational-unit" {
  name      = var.ou_name
  parent_id = data.aws_organizations_organization.ou.roots[0].id
}
