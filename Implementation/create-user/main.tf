module "terraform-identity-center" {
  source = "../../module/terraform-identity-center"

  display_name  = "Yoshi12"
  emails        = "kamaz@gmail.com"
  family_name   = "Kyo"
  given_name    = "Kamazaki"
  phone_numbers = "237654970161"
  timezone      = "EST"
  title         = "Developer"
  user_name     = "yoshi99000000"
}