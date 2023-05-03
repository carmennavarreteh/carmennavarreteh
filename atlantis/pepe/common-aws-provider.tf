provider "aws" {
  region = var.aws_region
  allowed_account_ids = [
    var.aws_account_id
  ]

  # assume_role {
  #   role_arn     = "arn:aws:iam::${local.account_id}:role/${local.control_plane_account_access_role}"
  #   session_name = var.sts_session_name
  # }

  default_tags {
    tags = merge(
      var.extra_tags,
      {
        created_by = var.created_by
        owner      = var.owner
      }
    )
  }

  ignore_tags {
    keys = ["created_by"]
  }
}
