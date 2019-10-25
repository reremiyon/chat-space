# README
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|username|integer|null: false|
|email|integer|null: false|
|password|integer|null: false|
### Association
- has_many :groups_users
- has_many :groups, through: :groups_users
- has_many :chats

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|groupname|integer|null: false|
|member|integer|null: false|
### Association
- has_many :groups_users
- has_many :users, through: :groups_users
- has_many :chats

## chatsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user
