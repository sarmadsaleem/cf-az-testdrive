# Cloudflare Azure ACI Test Drive

Sample repo to setup this flow: Cloudflare -> Azure App Gateway -> Azure Container Instance (NGINX). Spoiler alert, ACI sucks, use App Service / Container Apps / AKS instead.

```bash
# Clone repo
git clone https://github.com/sarmadsaleem/cf-az-testdrive.git

# Install deps
brew bundle

# Install pinned TF version
tfenv install

# Setup env vars
cp terraform.tfvars.example terraform.tfvars

# TF workflow
terraform plan
terraform apply
```
