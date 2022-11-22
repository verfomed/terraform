module "ec2" {
  source        = "./modules/ec2"
  instance_type = "t2.micro"
  tag_name      = "practica"
  volume_size   = 20
  key_name      = "pruebas"
}