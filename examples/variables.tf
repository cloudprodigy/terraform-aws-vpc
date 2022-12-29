# Supports TF Cloud setup. Configure below varaibles in TF Cloud workspace

# Enable if using TF Cloud
# variable "tf_cloud_role" {
#   description = "To assume Terraform service role in respective accounts"
#   type        = string
# }

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}