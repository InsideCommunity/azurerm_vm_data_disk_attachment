variable "managed_disk_id" {
  description = "The ID of an existing Managed Disk which should be attached."
  type        = string
  default     = null
}
variable "virtual_machine_id" {
  description = "The ID of the Virtual Machine to which the Data Disk should be attached."
  type        = string
  default     = null
}
variable "lun" {
  description = "The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine."
  type        = string
  default     = null
}
variable "caching" {
  description = "Specifies the caching requirements for this Data Disk. Possible values include None, ReadOnly and ReadWrite."
  type        = string
  default     = "ReadWrite"
}
variable "create_option" {
  description = "The Create Option of the Data Disk, such as Empty or Attach. Defaults to Attach. "
  type        = string
  default     = null
}
variable "write_accelerator_enabled" {
  description = "Specifies if Write Accelerator is enabled on the disk. This can only be enabled on Premium_LRS managed disks with no caching and M-Series VMs. Defaults to false."
  type        = bool
  default     = false
}
