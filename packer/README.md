# 目的
Packerを使って、WordPressを導入済みのAmazon Linux2のAMIを作成する。

## 問題点
既に立ち上げ済みのEC2インスタンスに対してPackerはAMI化できないっぽい。

## 解決策
既に立ち上げ済みのものはAWS CLIでAMIを作成する。
Packerの使いみちとして、テンプレートファイル内にProvisionディレクティブを用意して、その中で設定を記載する。
Ansibleの実行先をローカルマシンにすれば自分に対してWordPressの導入を行えると思う。
