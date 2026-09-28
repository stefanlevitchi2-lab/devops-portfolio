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
```

---

## 🚀 Usage Instructions

### Prerequisites
- [Terraform CLI](https://www.terraform.io/downloads) installed locally.
- AWS Credentials configured (`aws configure` or environment variables).

### Commands

1. **Initialize Working Directory:**
   ```bash
   terraform init
   ```

2. **Preview Execution Plan:**
   ```bash
   terraform plan
   ```

3. **Apply Infrastructure Changes:**
   ```bash
   terraform apply -auto-approve
   ```

4. **Tear Down Infrastructure:**
   ```bash
   terraform destroy
   ```

---

## 🔐 Security Best Practices
- State files (`.tfstate`) and sensitive input variables (`.tfvars`) are automatically excluded from version control via `.gitignore`.
- Security group rules follow the principle of least privilege.
