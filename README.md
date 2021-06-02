# テーブル設計

## users テーブル

| Column             | Type   | Options                  | 
| -------------------| ------ | ------------------------ |
| nickname           | string | null:false               |
| email              | string | null:false, unique :true |
| encrypted_password | string | null:false               |

## Association

- has_many :managements

## managements テーブル

| Column      | Type       | Options                             |
| ----------- | ---------- | ------------------------------ |
| item        | string     | null:false                     |
| category_id | integer    | null:false                     |
| deadline    | date       | null:false                     |
| user        | references | null: false, foreign_key: true |

## Association

- belongs_to :user