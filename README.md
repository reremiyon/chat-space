|Column|Type|Options|
|------|----|-------|
|name|integer|null: false|
|email|integer|null: false|
|password|integer|null: false|

- has_many :groups_users
- has_many :groups, through: :groups_users
- has_many :chats

|Column|Type|Options|
|------|----|-------|
|name|integer|null: false|

- has_many :groups_users
- has_many :users, through: :groups_users
- has_many :chats

|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

- belongs_to :user
- belongs_to :group

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

- belongs_to :group
- belongs_to :user