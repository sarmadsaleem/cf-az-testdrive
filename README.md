# Cloudflare Azure ACI Test Drive

Sample repo to setup this flow: Cloudflare -> Azure App Gateway -> Azure Container Instance (NGINX). Spoiler alert, ACI sucks, use App Service / Container Apps / AKS instead.

```bash
git clone https://github.com/sarmadsaleem/cf-az-testdrive.git
cp terraform.tfvars.example terraform.tfvars
terraform plan
terraform apply
```
