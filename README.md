# README



# テーブル設計

## users テーブル
| Column             | Type    | Option      |
| ------------------ | ------- | ----------- |
| last_name          | string  | null: false |
| first_name         | string  | null: false |
| last_name_kana     | string  | null: false |
| first_name_kana    | string  | null: false |
| email              | string  | null: false |
| password           | string  | null: false |
| birthday           | date    | null: false |
| admin              | boolean | null: false |

### Association

-has_many :shifts
-has_many :days


## shifts テーブル
| Column          | Type       | Option                         |
| --------------- | ---------- | ------------------------------ |
| begin           | time       | null: false                    |
| finish          | time       | null: false                    |
| break_in        | time       | null: false                    |
| break_out       | time       | null: false                    |
| user            | references | null: false, foreign_key: true | 

### Association

-belongs_to :user
-has_many   :days


## days テーブル
| Column        | Type       | Option                         |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| shift         | references | null: false, foreign_key: true |

### Association

-belongs_to :user
-belongs_to :shift



