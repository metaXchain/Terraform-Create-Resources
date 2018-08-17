# Terraform-Create-Resources

[Download Terraform](https://www.terraform.io/downloads.html)

Source your AWS credentials 

**CMDS**

`terraform init`

`terraform plan`

`terraform apply`

   Terraform CLI allows you to include environment variables in apply command:
   
   `terraform apply -var foo=bar -var foo=baz`

[Fargate Example Code from github.com/Oxalide](https://github.com/Oxalide/terraform-fargate-example)


After you run `terraform apply` and the command ran successfully, a file named `terraform.tfstate` is generated and can be found in the root of where you ran the apply command. Inside the `terraform.tfstate` file you can find the current state of the deployed resources with all its information.
