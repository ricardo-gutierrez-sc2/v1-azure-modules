variable "account_registration" {
  description = "Enter LRS for Palo ALto"
}
variable "account_tier" {
  description = "Enter Standard for Palo"
}
variable "region" {}
variable "storage_account_name" {}
variable "resource_grp_name" {}
variable "storage_account_kind" {
  description = "For Palo Alto Firewalls StorageV2.  These are other options BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2"
}
