provider "aws" {
  profile = "default" #AWS configureのデフォルト設定
  region = "ap-northeast-1" #東京リージョン
}

resource "aws_instance" "YutaInstance" {
  #ami           = "ami-06ad9296e6cf1e3cf" #Amazon Linux2
  ami           = "ami-094fbef15a2274cf2"  #packer build AMI
  instance_type = "t2.micro"

  vpc_security_group_ids = ["sg-0b2cbd5fbd6f61d86"] #SSH,HTTP,ICMP allow

  tags = {
    Name = "YutaInstance-terraform"
  }

  key_name = "TokyoKeyPair"

}
