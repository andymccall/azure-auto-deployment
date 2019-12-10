variable "tags" {
  type        = "map"
  description = "A map of the tags to use on the resources that are deployed with this module."

  default = {
    create_method = "terraform"
    create_method = "dev"
  }
}