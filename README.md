# Chat Space

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|references|null: false, foreign_key: true|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :tweets
- has_many :comments

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments

## chatテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|member|references|null: false, foreign_key: true|
- belongs_to :tweets
- belongs_to :user
