# example resource
resource "aws_security_group" "radonium" {
  name        = "gsdd-radonium"
  description = "Example SG, workspace = ${terraform.workspace}"
}
