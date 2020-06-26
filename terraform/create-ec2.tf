provider "aws" {
  profile = "default" #AWS configureのデフォルト設定
  region = "ap-northeast-1"
}

resource "aws_vpc" "YutaVPC" {
  cidr_block = "172.16.0.0/16"
  tags = {
    Name = "YutaVPC-terraform"
  }
}

resource "aws_default_security_group" "default" {
  vpc_id = aws_vpc.YutaVPC.id
}

resource "aws_subnet" "YutaSubnet" {
  vpc_id            = "${aws_vpc.YutaVPC.id}"
  cidr_block        = "172.16.10.0/24"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "YutaSubnet-terraform"
  }
}

resource "aws_network_interface" "YutaNetwork" {
  subnet_id   = "${aws_subnet.YutaSubnet.id}"
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "YutaInstance" {
  ami           = "ami-0a1c2ec61571737db"
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = "${aws_network_interface.YutaNetwork.id}"
    device_index         = 0
  }

  #security_groups = "sg-04d0175d02367f5ca"
  #vpc_security_group_ids = "sg-04d0175d02367f5ca"

  tags = {
    Name = "YutaInstance-terraform"
  }

  key_name = "TokyoKeyPair"

}
