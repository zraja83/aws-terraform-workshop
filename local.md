## Running this Lab locally

Use the steps below to run this Lab locally:

### Steps:
- Clone repository:
```
git clone git@github.com:kawsark/terraform-enterprise-201.git
cd terraform-aws-mvd/
```
- Set Terraform AWS Provider variables:
```
export AWS_ACCESS_KEY_ID=<access-key-id>
export AWS_SECRET_ACCESS_KEY=<secret-access-key>
export AWS_DEFAULT_REGION="us-west-2"
```
- Set Terraform variables as Environment variables prefixed with `TF_VAR_` (Alternatively these can be entered in a `.tfvars` file).
```
export TF_VAR_identity="demo-wallaby"
export TF_VAR_ingress_cidr="$(curl -s http://whatismyip.akamai.com)/32"
```
- Run Terraform:
```
terraform init
terraform plan
terraform apply
```

### Access:
  - The application can be accessed from the `public_dns` or `public_ip` output. You can run `terraform output` to view the hostname.
  - There server can be accessed using SSH. The SSH private and public key pair was generated during the provisioning process and can be used as below:
```
terraform output -module=server private_key > server.pem
chmod 600 server.pem
export server_public_dns="$(terraform output public_dns)"
ssh -i server.pem ubuntu@${server_public_dns}
```

### Cleaup:
```
rm server.pem
terraform destroy
```
