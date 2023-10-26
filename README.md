# Terraform Module: AWS EC2 Instance

This Terraform module allows you to create an Amazon Elastic Compute Cloud (EC2) instance with specific configurations.

## Usage

You can use this module by including it in your Terraform configuration file as follows:

```
module "techlearnings_aws_ec2" {
  source = "app.terraform.io/your-organization/aws-ec2-instance/aws"
  version = "1.0.2"

  ami           = var.ec2_ami           # Replace with your desired AMI ID
  instance_type = var.ec2_type          # Replace with your desired instance type
}
```

# Terraform Configuration Documentation

## Project Description

This Terraform project manages AWS EC2 instances with different configurations. It uses variables to define the AMI and instance type, and it captures the public IP address as an output.

Input Variables
---------------
This module supports the following input variables:

*   `ami` (Required): The ID of the Amazon Machine Image (AMI) to use for the EC2 instance. You should specify an AMI ID, e.g., `"ami-0123456789abcdef0"`.
    
*   `instance_type` (Required): The type of the EC2 instance, e.g., `"t2.micro"`. You can choose the instance type that suits your application needs

Outputs
-------

This module defines the following output variable:

*   `public_ip`: The public IP address of the created EC2 instance.

You can access the public IP address in your Terraform code by referencing `module.techlearnings_aws_ec2.public_ip`.

Authors
-------

*   PRabu Ramasubbu
