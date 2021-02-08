## users　テーブル

| Column             | Type     | Options                       |
| ------------------ | -------- | ----------------------------- |
| name               | string   | null: false                   |
| email              | string   | null: false, uniqueness: true |
| encrypted_password | string   | null: false                   |

### Association

- has_many :group_users
- has_many :messages

## groups

| Column  | Type       | Options           |
| ------- | ---------- | ----------------- |
| name    | string     | null: false       |
| shift   | references | foreign_key: true |
| message | references |                   |

### Association

- has_many :group_users
- has_many :messages
- has_one  :shift

## group_users

| Column | Type       | Options           |
| ------ | ---------- | ----------------- |
| user   | references | foreign_key: true |
| group  | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :group

## messages

| Column  | Type       | Options           |
| ------- | ---------- | ----------------- |
| user    | references | foreign_key: true |
| group   | references | foreign_key: true |
| content | string     | null: false       |

- belongs_to :user
- belongs_to :group

## shifts

| Column
| ------
|
|

### Association

-belongs_to :group