terraform {
  required_providers {
    genesyscloud = {
      source = "MyPureCloud/genesyscloud"
    
    }
  }
}


provider "genesyscloud" {
  oauthclient_id     = var.client_id
  oauthclient_secret = var.client_secret
  aws_region         = var.aws_region
}

/*
locals {
  filtered_resource = length(var.datatable_names) > 0 ? flatten([
    for name in var.datatable_names : [
      "genesyscloud_architect_datatable::${name}",
      "genesyscloud_architect_datatable_row::${name}"
    ]
  ]) : [
    "genesyscloud_architect_datatable",
    "genesyscloud_architect_datatable_row"
  ]
}


resource "genesyscloud_tf_export" "export" {
 
 
 directory= "./genesys-datatable"
  include_filter_resources  = local.filtered_resource
  include_state_file = false
  export_as_hcl = true
  log_permission_errors = true

}


 */
 
# Add your logic here (e.g., archy pull or any CLI command)
resource "null_resource" "run_script_after_resources" {
 //depends_on = [genesyscloud_tf_export.export//
 //]
 provisioner "local-exec" {
   command = "${path.module}\\test.bat"
 }
 triggers = {
   always_run = "${timestamp()}"  # Ensures script runs on every apply
 }
}