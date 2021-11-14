module "security" {
  source = "../security"
  vpc_id = var.vpc_id
}

resource "aws_key_pair" "ssh-key" {
  key_name   = "ssh-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDA67XNCXc6P7gHYSfJwem80K807NQSLmqVepLqtxu+Y10p/azQ/0gbkmubkltbSpVR389mO61RDrY8+AFmvDiXOR9BV/bhz3Kdu+AeqEZnLmDfhAF3EdaPnM11CnLjsGfhURujkFbWECB4h+XQiXd+VvLJHMxrOGdou25vFOoN+k1FZ58sHS78pGeGSKaeifH0AcxqXu/76h3Ttjpjnc/GMXUzate7uBOe46Lle91SVdt+u1R5Vu52sITrdnUkHXcwHdDXSEzHIRWdBIKydNB23q5ywhfU9nLE0JECmrP/jVDZKmuYdX6lg/2byxbHet+Pz/QiWIPYmU58lcByPIC/"
}

resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  count = var.app_server_count
  vpc_security_group_ids = [module.security.application_sg_id]
  associate_public_ip_address = true
  key_name         = "ssh-key"
  tags = {
    Name = "node${count.index + 1}"
  }
}