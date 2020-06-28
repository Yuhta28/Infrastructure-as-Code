provider "aws" {
  profile = "default" #AWS configureのデフォルト設定
  region = "ap-northeast-1"
}

resource "aws_instance" "YutaInstance" {
  ami           = "ami-0a1c2ec61571737db"
  instance_type = "t2.micro"

  #network_interface {
  #  network_interface_id = "eni-01ca1ea8d5ace73c5"
  #  device_index         = 0
  #}

  #security_groups = "sg-04d0175d02367f5ca"
  vpc_security_group_ids = ["sg-0b2cbd5fbd6f61d86"]

  tags = {
    Name = "YutaInstance-terraform"
  }

  key_name = "TokyoKeyPair"

}
