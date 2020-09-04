
# WELIBRARY
====
本の情報投稿アプリ

## 説明
- 本のタイトル、著者、内容で検索できる。
- ログインすれば本の内容や感想を投稿できる。
- 投稿にコメントできる。
- ユーザー名を選択するとその人の書いたレビューが見られるため、好みの合うユーザーから本を選ぶこともできる

## App URL
https://welibrary1.herokuapp.com/

- テスト用アカウント
  - メールアドレス : test@gmail.com
  - パスワード : abc123

## 制作背景
- 読書をする人が少なくなっているように感じ、読書をする人と感想を共有したいと思った。
- 本のタイトル、著者だけではなく、「ハラハラしたい」「癒されたい」などの気分で本を選びたい。
- 投稿に対して、「読んだ」「読んでみたい」などの意思表示をできる機能が欲しい。
- 他の投稿者の投稿一覧も見られるため、レビュー内容から自分と好みの似たユーザーがおすすめしている本を見つけられるようにしたい。

## Demo
<img width="1084" alt="welibrary" src="https://user-images.githubusercontent.com/67994393/92256199-61f13600-ef0e-11ea-8d56-d12b37996a6f.png">

## 工夫したポイント
- 全体を同系色でまとめて統一感が出るようにし、ホバー色もページ内で使用している色を使うようにして落ち着きのある見た目にした。
- ログインしている人のみ投稿、編集、削除ができるようにした。
- タイトル、投稿者、内容、全てで検索できるようにした。

## 使用技術
Ruby/Ruby on Rails/postgeSQL/Github/Heloku/Visual Studio Code

## 今後実装したい機能
- ジャンル別、その時の気分で検索できる。
- 読んだボタン、読んでみたいボタン機能がある。

## DB設計
## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
|title|string|
|author|string|
|text|text|
|image|string|
|integer|user_id|
### Association
- belongs_to :user
- has_many :comments

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|password_confirmation|string|null: false|
### Association
- has_many :tweets
- has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|tweet_id|integer|
|text|text|
### Association
- belongs_to :tweet
- bolongs_to :user
