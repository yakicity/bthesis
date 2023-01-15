# bthesis
学士論文テンプレート

## 🔰最初にやること
このテンプレートリポジトリから、自分のリポジトリを作る -> https://help.github.com/ja/github/creating-cloning-and-archiving-repositories/duplicating-a-repository

:warning: このリポジトリに自分の論文をPushしないでください :warning:

<br>

## :computer: コンパイル方法
### in local machine
```bash
latexmk bthesis
```
もしくは
```
make run
```

余計なファイルの削除は
```
make clean
```

### Docker
Dockerを使ったコンパイル
最初に1回(2GB近いイメージをビルドするのでかなり遅い)(僕の環境では10分掛かりました)
```
make docker-build
```
以後起動毎に
```
make docker-run
```

このdockerを実行するとファイルの更新に応じて自動で再コンパイルします
あと。や、が自動的に．と，に変換されます

### by using GitHub Actions
リポジトリをpushすると、勝手にビルドされるよ。
詳しくは [ここ](https://github.com/koikelab-team/mthesis/issues/1) を見てね

<br>

## :bulb: tips
[Issue](https://github.com/koikelab-team/mthesis/issues)を見てね。
ノウハウはどんどん共有しよう！

<br>

## :tada: 謝辞
コンパイル部分やこのREADMEは前田先輩の[修士論文テンプレート](https://github.com/koikelab-team/mthesis)からお借りしました:pray::bow:

Docker関連のファイルは[ArkさんのDockerイメージ](https://github.com/arkark/latexmk-docker)を改変したものです

論文のテンプレートは2022年度に情報工学系より配布されているものに準じています．
