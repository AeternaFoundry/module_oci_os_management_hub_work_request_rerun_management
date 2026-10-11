output "os_management_hub_work_request_rerun_managements_id" {
  description = "Map of id values across all os_management_hub_work_request_rerun_managements, keyed the same as var.os_management_hub_work_request_rerun_managements except keys with no id are omitted"
  value       = { for k, v in oci_os_management_hub_work_request_rerun_management.os_management_hub_work_request_rerun_managements : k => v.id if v.id != null && length(v.id) > 0 }
}
output "os_management_hub_work_request_rerun_managements_managed_instances" {
  description = "Map of managed_instances values across all os_management_hub_work_request_rerun_managements, keyed the same as var.os_management_hub_work_request_rerun_managements except keys with no managed_instances are omitted"
  value       = { for k, v in oci_os_management_hub_work_request_rerun_management.os_management_hub_work_request_rerun_managements : k => v.managed_instances if v.managed_instances != null && length(v.managed_instances) > 0 }
}
output "os_management_hub_work_request_rerun_managements_work_request_details" {
  description = "Map of work_request_details values across all os_management_hub_work_request_rerun_managements, keyed the same as var.os_management_hub_work_request_rerun_managements except keys with no work_request_details are omitted"
  value       = { for k, v in oci_os_management_hub_work_request_rerun_management.os_management_hub_work_request_rerun_managements : k => one(v.work_request_details) if v.work_request_details != null && length(v.work_request_details) > 0 }
}
output "os_management_hub_work_request_rerun_managements_work_request_id" {
  description = "Map of work_request_id values across all os_management_hub_work_request_rerun_managements, keyed the same as var.os_management_hub_work_request_rerun_managements except keys with no work_request_id are omitted"
  value       = { for k, v in oci_os_management_hub_work_request_rerun_management.os_management_hub_work_request_rerun_managements : k => v.work_request_id if v.work_request_id != null && length(v.work_request_id) > 0 }
}

