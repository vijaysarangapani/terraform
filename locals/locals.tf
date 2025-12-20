locals {
  final_name = "${var.project}-${var.environment}-${var.component}"
  ec2-tags = merge(
    var.common_tags,
    {
      environment = "dev"
      version     = "1.0"
    }
  )
}