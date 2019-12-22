# SSH Port Forwarding(SSH Tunneling)

[TOC]

## SSH Port Forwarding の概要
Firewall等の設定で特定の（特に同一ネットワーク内のホスト）IPアドレスからしか接続を受け付けないリモート環境にあるサーバに対して（＝直接ローカル端末からSSH等のアクセスできない環境）、接続するための手法。SSH Serverをある種の踏み台にして、アクセスする。SSHで



## SSH Port Forwarding の種類

* Local Forwarding
* Remote Forwarding
* Dinamic Forwarding

## Ideal Environment
ローカル環境に接続元端末。リモートに接続したい端末、Web Server。
リモートに踏み台とするSSH Server。

| 項目 | 値 |
| ------- | ---------- |
| Local  Client     IP Address |  |
| Remote SSH Server IP Address | 20. |
| Remote Web Sever  IP Address | 20. |
| Local  Client     Port |  |
| Remote SSH Server Port | 22 |
| Remote Web Sever  Port | 80 |

***
## Local Forwarding

### command
```bash
ssh [踏み台Host] -L [local client port]:[Remote Host]:[remote port] -N -f
```
```yaml
[local client port]: 接続元ローカル端末の情報（予約されていない任意のポート番号）
[Remote Host]:[remote port]: 接続したいサーバ（Web Server）の情報
[踏み台Host]: 踏み台とするSSH Serverの情報
```
local client portに関しては、既に予約されていない任意の数字を指定できる。そのポート番号で Tunneling を行う！

### option
* -L で Local Forwarding(Tunneling) が行われる。
* -N でシェルの入力等の機能を遮断（制限）（フロントにはTerminalが表示される）
* -f でバックグラウンドでの処理にする。（-Nで指定した固まり続けるTerminalを表示しない）

### [additional] Multi Stage Connection(多段接続)
SSH Serverへの接続を中間サーバ（いわゆる、踏み台サーバ）からしか受け付けない設定をしている場合。
即ち、以下のような場合、多段接続を行う。
```
local -> 中間サーバ -> SSH Server -> Remote Host 
```
多段接続のコマンド
```bash
ssh [中間サーバのIP Address] -t [SSH接続先での実行コマンド]
```

先ほどの Tunneling と組み合わせると、
local -> 中間サーバ(SSH Server2) -> SSH Server -> Remote Host の接続に関しては、
```bash
ssh [中間サーバのIP Address] -L [local client port]:[Remote Host]:[remote port] -N -f  -t ssh [SSH Server IP Address]
```
となる。

### [addtional] .ssh/config ProxyCommand

```bash
Host [Remote Host(IP,Name)]
    HostName [Remote Host(IP,Name)]
    User     [User Name for Tunneling]
    ProxyCommand ssh -W %h:%p [SSH ServerのIP Address]

Host [SSH Server(IP,Name)]
    HostName [SSH Server(IP,Name)]
    User     [User Name for Tunneling]
    ProxyCommand ssh -W %h:%p [中間サーバのIP Address]

Host [中間サーバ(IP,Name)]
    HostName [中間サーバ(IP,Name)]
    User     [User Name for Tunneling]

※ IdentityFile は省略。
```
* 読み方
Remote Hostにアクセスしたい場合は、SSH Serverを通してください。
SSH Serverにアクセスしたい場合は、中間サーバを通してください。
中間サーバへのアクセス情報はこれです。

### Reference
[SSH tunnel](https://ssh.com/ssh/tunneling)
[ProxyCommandを使って踏み台(Bastion)経由で直接ssh/scpする](https://dev.classmethod.jp/beginners/direct-ssh-by-proxycommand/)
[つながるトンネルが俺の力だ！](https://note.crohaco.net/2017/ssh-tunnel/)

※ つながるトンネルが俺の力だ！ は、ProxyCommandの説明が、SSH Serverにつなぐことが目的になっているように思えるので、注意！！！


***
## Remote Forwarding



***
## Dinamic Forwarding



***

