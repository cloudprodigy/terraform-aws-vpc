locals {

  aws_account_id = data.aws_caller_identity.current.account_id
  region         = data.aws_region.current.name
  environment    = var.environment
  app_name       = "abc" # Replace it with specific app name
  team           = "abc" # Replace it with specific team name. It is used to create a `Team` tag on the resources

  # Appropriate VPC and Subnet CIDRs will be selected based on the environment value.
  vpc_config = {
    dev = {
      "cidr"            = "192.168.0.0/20"
      "private_subnets" = ["192.168.0.0/22", "192.168.4.0/22"]
      "public_subnets"  = ["192.168.8.0/22", "192.168.12.0/22"]
    },
    test = {
      "cidr"            = "172.30.32.0/20"
      "private_subnets" = ["172.30.32.0/22", "172.30.36.0/22"]
      "public_subnets"  = ["172.30.40.0/22", "172.30.44.0/22"]
    },
    prod = {
      "cidr"            = "10.10.0.0/20"
      "private_subnets" = ["10.10.0.0/22", "10.10.4.0/22"]
      "public_subnets"  = ["10.10.8.0/22", "10.10.12.0/22"]
    },
  }
}
