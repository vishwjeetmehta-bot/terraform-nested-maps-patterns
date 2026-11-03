variable "resource_group_name" {
  description = "Name of target resource group"
  type        = string
  default     = "rg-platform-core"
}

variable "location" {
  description = "Azure deployment region"
  type        = string
  default     = "eastus"
}

variable "storage_accounts_map" {
  description = "Nested map defining multiple storage account configurations dynamically"
  type = map(object({
    rgname     = string
    location   = string
    tier       = string
    redundancy = string
  }))
  default = {
    "stgcorelogs01" = {
      rgname     = "rg-platform-core"
      location   = "eastus"
      tier       = "Standard"
      redundancy = "LRS"
    }
    "stgappassets02" = {
      rgname     = "rg-platform-core"
      location   = "eastus"
      tier       = "Standard"
      redundancy = "ZRS"
    }
  }
}
