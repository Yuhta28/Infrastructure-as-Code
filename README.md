# Infrastructure-as-Code

## 概要
[Terraforom](https://www.terraform.io/)でAWS EC2インスタンスを構築し、[Ansible](https://docs.ansible.com/)でWordPressを導入し、[Packer](https://www.packer.io/)でAMIを作成する

→既に立ち上げたEC2インスタンスに対してPackerでAMI化はできないっぽい。
この場合はコンソール画面からAMI作成かCLIでコマンドベースで作成するのが良い。
