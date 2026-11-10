<div align="center">

# 🗺️ Dynamic Terraform Provisioning with Nested Maps & `for_each`

[![Terraform](https://img.shields.io/badge/Terraform-HCL_Patterns-844FBA?style=for-the-badge&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![Azure](https://img.shields.io/badge/Azure-Infrastructure_Automation-0078D4?style=for-the-badge&logo=microsoftazure&logoColor=white)](https://azure.microsoft.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](./LICENSE)

<p align="center">
  <b>Advanced Terraform dynamic iteration patterns demonstrating how to loop through complex nested maps and objects using `for_each` without hardcoding redundant resource blocks.</b>
</p>

</div>

---

## 💡 The Architectural Problem

When deploying fleets of similar cloud infrastructure (such as multiple storage accounts, network interfaces, subnets, or database firewall rules), duplicating `resource` blocks violates the DRY (Don't Repeat Yourself) principle.

Using nested maps with `for_each` allows:
1. Dynamic addition of resources simply by updating input variable maps.
2. Distinct configurations (regions, replication tiers, resource groups) per resource.
3. Stable state addressing (`azurerm_storage_account.storage_accounts["stgcorelogs01"]`), preventing unwanted destroys/re-creations when list indices shift.

---

## ⚡ Quick Start

```bash
# 1. Initialize
terraform init

# 2. Plan using example configurations
terraform plan -var-file=terraform.tfvars.example

# 3. Apply
terraform apply -var-file=terraform.tfvars.example -auto-approve
```

---

## 👤 Author

**Vishwjeet Kumar Mehta**  
Senior DevOps & DevSecOps Consultant | Cloud & Infrastructure Architect  
- **LinkedIn**: [linkedin.com/in/vishwjeet-mehta](https://www.linkedin.com/in/vishwjeet-mehta/)  
- **GitHub**: [@vishwjeetmehta-bot](https://github.com/vishwjeetmehta-bot)
