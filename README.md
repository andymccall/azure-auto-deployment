# azure-auto-deployment

`az login`

`az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<YOUR_SUBSCRIPTION>"`

Add the details returned from this along with your subscription ID to providers.tf

Add admin username and password to variables.tf

Install Terraform on your machine.  Once you're in the azure-auto-deployment folder run the following:

`terraform init`

`terraform apply`
