# Chat Space

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|id|integer|null: false, foreign_key: true|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|index: true|
### Association
- has_many :tweets
- has_many :groups,through: :users_group
- has_many :users_groups

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|user_id|references|null: false foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## groupテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|id|integer|null: false|
### Association
- has_many :tweets
- has_many :users,through: :users_groups
- has_many :users_groups


## users_groupテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer|null: false|
|user|references|null: false,foreign_key: true|
|group|references|null:false,foreign_key:true|
### Association
- belongs_to :group
- belongs_to :user