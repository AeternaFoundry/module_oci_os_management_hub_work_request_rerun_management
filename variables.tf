variable "os_management_hub_work_request_rerun_managements" {
  description = <<EOT
Map of os_management_hub_work_request_rerun_managements, attributes below
Required:
    - work_request_id
Optional:
    - managed_instances
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - work_request_details (block):
        - description (optional)
        - display_name (optional)
EOT

  type = map(object({
    work_request_id   = string
    managed_instances = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    work_request_details = optional(object({
      description  = optional(string)
      display_name = optional(string)
    }))
  }))
}

