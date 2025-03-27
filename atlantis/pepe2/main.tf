# example resource
resource "null_resource" "example" {
  # Specify triggers to re-run this resource when specific conditions change.
  triggers = {
    timestamp = timestamp()
  }

  # Define the provisioner(s) or actions to be performed.
  provisioner "local-exec" {
    command = "echo This is a null resource."
  }
}
