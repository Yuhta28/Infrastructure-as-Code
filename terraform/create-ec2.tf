provider "aws" {
  profile = "default" #AWS configureのデフォルト設定
  region = "ap-northeast-1"
}

resource "aws_instance" "YutaInstance" {
  ami           = "ami-06ad9296e6cf1e3cf"
  instance_type = "t2.micro"

  vpc_security_group_ids = ["sg-0b2cbd5fbd6f61d86"]

  tags = {
    Name = "YutaInstance-terraform"
  }

  key_name = "TokyoKeyPair"

}
