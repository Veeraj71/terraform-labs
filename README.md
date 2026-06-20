# Terraform Labs: Infrastructure as Code (IaC)

A hands-on Infrastructure as Code (IaC) laboratory implementing declarative system configuration, resource management, and state tracking using Terraform and HashiCorp Configuration Language (HCL).

---

The goal of this lab was to establish a foundational understanding of the core Terraform lifecycle (`init` -> `plan` -> `apply`) by provisioning local file resources safely and tracking state architecture.

### 🛠️ Tech Stack & Tools :
* **Orchestration:** Terraform (v1.x)
* **Configuration Language:** HCL (HashiCorp Configuration Language)
* **OS Environment:** Linux Mint (Ubuntu/Debian-based)
* **Version Control:** Git & GitHub

### 📁 Core Architecture :
* `main.tf` - Declares the required version-locked `hashicorp/local` provider and defines the target resource topology.
* `terraform.tfstate` - The state database mapping real-world infrastructure back to the configuration files.
* `.terraform.lock.hcl` - The dependency lock file ensuring strict deterministic provider checksums across runs.
* `.gitignore` - Airtight security patterns preventing confidential state files (`*.tfstate`) from ever leaking into public VCS.

---

## ⚙️ How to Run Locally ?

1. **Initialize the workspace** (Downloads required providers and builds the lock-file):
```bash
   terraform init -upgrade
