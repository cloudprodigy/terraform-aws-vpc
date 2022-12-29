# get AWS account number
data "aws_caller_identity" "current" {}

# get current region
data "aws_region" "current" {}


