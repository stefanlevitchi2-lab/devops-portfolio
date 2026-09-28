# 03. Infrastructure as Code (Terraform)

This project demonstrates declarative cloud infrastructure provisioning using **Terraform**. It defines an automated, reproducible deployment process for server infrastructure and security configurations.

---

## 🏗 Provisioned Resources

- **Virtual Server:** AWS EC2 Instance (`t2.micro` / Ubuntu Server LTS).
- **Network Security:** AWS Security Group with strictly controlled inbound rules (SSH port 22, HTTP port 80).
- **Access Control:** SSH Key Pair association for secure remote administrative access.

---

## 📁 File Structure

```text
03-infrastructure-as-code/
├── main.tf          # Core infrastructure & provider configurations
├── variables.tf     # Input variables (AWS region, instance type, AMI)
├── outputs.tf       # Exported resource details (Public IP, Instance ID)
└── README.md        # Architecture documentation
