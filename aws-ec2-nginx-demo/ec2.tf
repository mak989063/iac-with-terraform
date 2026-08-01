resource "aws_instance" "web" {

  ami           = data.aws_ami.al2023.id
  instance_type = var.instance_type

  key_name = var.key_name
  subnet_id = data.aws_subnets.default.ids[0]

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = file("${path.module}/user-data.sh")

  root_block_device {
    volume_size           = 8
    volume_type           = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "${var.project_name}-ec2"
  }
}