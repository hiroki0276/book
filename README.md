# README
## マンガチェック

## 概要
https://mangacheck.herokuapp.com/

- 自分の所持しているマンガや書籍を管理することができます。
- 新しく書籍を購入したらすぐに更新しましょう。
- ふらっと立ち寄った本屋で新刊を発見した時、既に買った本かどうか迷うことがなくなります。
- そしてとりあえず買ったものの家に帰ると同じものがあったという悲劇をなくしましょう！

## テストアカウント
こちらをご使用ください

- メールアドレス  
tanaka@tanaka

- パスワード  
12345678

## 仕様
- macOS Catalina 10.15.5
- ruby 2.6.5
- rails 6.0.3.2
- Postgresql
- Heroku

## 主な機能
### ユーザー
- ユーザー登録、ログイン、ログアウト

### 書籍リスト
- 作成、書籍名と作者名と巻数とメモの編集、削除


## データベース

## mangasテーブル
|column|Type|Options|
|------|----|-------|
|title|string|null:false|
|author|string|null:false|
|volume|string|null:false|
|memo|string|-----|
|user_id|references|null:false,foreign_key:true|

### アソシエーション
- belongs_to :user

## usersテーブル
|column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|mail|string|null: false, unique: true|
|password|string|null: false|

### Association
- has_many :mangas