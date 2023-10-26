resource "aws_instance" "tf_ec2" {
//ami           = "ami-07d77b1e82b231201"   # us-east-1
  ami         = var.ec2_ami
  instance_type = var.ec2_type             

  user_data = <<-EOF
  #!/bin/sh
  # system update
  sudo yum update -y

  # httpd install
  sudo yum install -y httpd
  sudo systemctl enable httpd
  sudo service httpd start  

  sudo echo '<h1>Welcome to Tech Learnings : Prabu</h1>' | sudo tee /var/www/html/index.html
EOF
  #vpc_security_group_ids = [data.aws_security_group.web_server.id]

  tags = {
    Name = "Prabu-EC2Cloud"
  }
}
