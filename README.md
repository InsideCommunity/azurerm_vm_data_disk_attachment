# Azurerm_vm_data_disk_attachment

Attach A Managed Disk and A Virtual Machine on Azure using a dedicated Terraform module. 

<!-- BEGIN_TF_DOCS -->
## Requirements

* A Virtual Machine (ID)
* A Managed Disk (ID)

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_virtual_machine_data_disk_attachment.az_vm_disk_attachment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_machine_data_disk_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_caching"></a> [caching](#input\_caching) | Specifies the caching requirements for this Data Disk. Possible values include None, ReadOnly and ReadWrite. | `string` | `"ReadWrite"` | no |
| <a name="input_create_option"></a> [create\_option](#input\_create\_option) | The Create Option of the Data Disk, such as Empty or Attach. Defaults to Attach. | `string` | `null` | no |
| <a name="input_lun"></a> [lun](#input\_lun) | The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. | `string` | `null` | no |
| <a name="input_managed_disk_id"></a> [managed\_disk\_id](#input\_managed\_disk\_id) | The ID of an existing Managed Disk which should be attached. | `string` | `null` | no |
| <a name="input_virtual_machine_id"></a> [virtual\_machine\_id](#input\_virtual\_machine\_id) | The ID of the Virtual Machine to which the Data Disk should be attached. | `string` | `null` | no |
| <a name="input_write_accelerator_enabled"></a> [write\_accelerator\_enabled](#input\_write\_accelerator\_enabled) | Specifies if Write Accelerator is enabled on the disk. This can only be enabled on Premium\_LRS managed disks with no caching and M-Series VMs. Defaults to false. | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
