# Terraform-module

A Terraform module is a collection of standard configuration files in a dedicated directory.A module allows you to group resources together and reuse this group later, possibly many times. A Terraform module (usually the root module of a configuration) can call other modules to include their resources into the configuration. A module that has been called by another module is often referred to as a child module.

This example shows how to launch an EC2 instance in two differnt environments UAT and prod which have different specifications.

The directory structure for the infrastructure looks like below.

```sh 
# tree module-ex/
module-exa/
├── environments
│   ├── dev
│   │   └── main.tf
│   └── prod
│       └── main.tf
├── main.tf
├── modules
│   └── ec2-instance
│       ├── main.tf
│       └── variables.tf
└── provider.tf
```

In each of the environment main.tf files, the module now needs the variables defined and passed to it. The directory modules here lists the modules used.

Finally we need to call the environments modules in the main.tf file of the root.

## Creating resources
With all the full code in place, let us create the AWS resources.

```sh
terraform init
terraform plan
terraform apply
```

Once the terraform apply is success we can list the resources.

```sh
# terraform state list
module.dev.module.dev-ec2-instance.aws_instance.ec2-instance
module.production.module.prod-ec2-instance.aws_instance.ec2-instance
```

## Conclusion

Here this code is managed to create an EC2 instance using terraform modules. By creating modules, builds reusable components.




