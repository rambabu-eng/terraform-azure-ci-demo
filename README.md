# Terraform Azure CI Demo

This repository contains a simple Terraform project that deploys an Azure Resource Group and uses GitHub Actions for Continuous Integration (CI).

The goal of this project is to demonstrate:

- Writing clean, modular Terraform code
- Following good Git practices (no `.terraform` folder in Git, `.gitignore` usage)
- Using GitHub Actions to automatically validate Terraform changes on every push and pull request

---

## 🏗️ Project Overview

### What this project does

- Configures the **AzureRM provider** for Terraform
- Creates an **Azure Resource Group** using input variables
- Exposes key information through Terraform **outputs**
- Uses a **GitHub Actions workflow** to run:
  - `terraform fmt -check`
  - `terraform init -backend=false`
  - `terraform validate`

This setup is similar to what many real-world cloud / DevOps teams use as a basic Terraform CI pipeline.

---

## 📂 Repository Structure

```text
.
├── terraform/
│   ├── main.tf          # Provider and Azure Resource Group resource
│   ├── variables.tf     # Input variables (RG name, location)
│   └── outputs.tf       # Outputs (RG name and ID)
├── .github/
│   └── workflows/
│       └── terraform-ci.yml   # GitHub Actions CI pipeline for Terraform
└── .gitignore           # Excludes .terraform, tfstate, tfvars, etc.
