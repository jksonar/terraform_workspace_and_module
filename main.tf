module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "terra-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-093a49d7ab60c8384"]
  subnet_id              = "subnet-0215d2a9c16d910ec"

  tags = {
    Terraform   = "true"
    Environment = "uat"
  }
}