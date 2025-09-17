variable "client_id" {
  description = "Genesys Cloud OAuth Client ID"
  type        = string
}
 
variable "client_secret" {
  description = "Genesys Cloud OAuth Client Secret"
  type        = string
  sensitive   = true
}
 
variable "aws_region" {
  description = "Genesys Cloud AWS region (e.g., us-east-1)"
  type        = string
  default     = "us-west-2"
}

variable "datatable_names" {
  description = "List of datatables names to export.If empty it exports all."
  type        = list(string)
  default     = []
}