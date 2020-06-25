provider "aws" {
  profile = "default" #AWS configureのデフォルト設定
  region = "ap-northeast-1"
}

resource "aws_instance" "Test" {
  ami                    = "ami-0a1c2ec61571737db"
  instance_type          = "t2.micro"
  #security_groups = ["sg-0b2cbd5fbd6f61d86"]
  tags   = {
    Name = "BuiltByTerraform"
  }
  key_name = "TokyoKeyPair"
}
