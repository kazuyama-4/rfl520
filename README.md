# テーブル設計

## users テーブル

| Column             | Type   | Options                  | 
| -------------------| ------ | ------------------------ |
| nickname           | string | null:false               |
| email              | string | null:false, unique :true |
| encrypted_password | string | null:false               |

## Association

- has_many :vegetables
- has_many :meats
- has_many :frozens
- has_many :drinks
- has_many :seasonings
- has_many :preserves



## vegetables テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| vegetable | string     | null:false                     |
| user      | references | null: false, foreign_key: true |

## Association

- belongs_to :user

## meats テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| meat   | string     | null:false                     |
| user   | references | null: false, foreign_key: true |

## Association

- belongs_to :user

## frozens テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| frozens | string     | null:false                     |
| user    | references | null: false, foreign_key: true |

## Association

- belongs_to :user

## drinks テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| drink  | string     | null:false                     |
| user   | references | null: false, foreign_key: true |

## Association

- belongs_to :user

## seasonings テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| seasoning | string     | null:false                     |
| user      | references | null: false, foreign_key: true |

## Association

- belongs_to :user

## preserves テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| preserve | string     | null:false                     |
| user     | references | null: false, foreign_key: true |

## Association

- belongs_to :user
