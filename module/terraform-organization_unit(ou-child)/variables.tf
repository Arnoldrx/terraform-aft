variable "child_ou_name" {
    type = list(string)
    default = [ "DEV", "Staging", "Prod" ]
}

variable "parent_id" {
    type = string
}