resource "aws_instance" "web" {
  count = length(var.ec2_names)
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.sg_id]
  subnet_id = var.subnets[count.index]
  associate_public_ip_address = true
  availability_zone = data.aws_availability_zones.available.names[count.index]
  key_name = "Aws_Devops"
  user_data = <<-EOF
  #!/bin/bash
  # Wait for cloud-init lock to release
  while sudo fuser /var/lib/dpkg/lock-frontend >/dev/null 2>&1; do sleep 1; done

  apt-get update -y
  DEBIAN_FRONTEND=noninteractive apt-get install -y apache2

  systemctl start apache2
  systemctl enable apache2
  echo "Hi ${var.ec2_names[count.index]} - Deployed via Terraform!" > /var/www/html/index.html
  echo "Hi ${var.ec2_names[count.index]}" > /home/ubuntu/welcome.txt
  EOF


  tags = {
    Name = var.ec2_names[count.index]
  }
}
