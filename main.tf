resource "oci_os_management_hub_work_request_rerun_management" "os_management_hub_work_request_rerun_managements" {
  for_each = var.os_management_hub_work_request_rerun_managements

  work_request_id   = each.value.work_request_id
  managed_instances = each.value.managed_instances

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "work_request_details" {
    for_each = each.value.work_request_details != null ? [each.value.work_request_details] : []
    content {
      description  = work_request_details.value.description
      display_name = work_request_details.value.display_name
    }
  }
}

