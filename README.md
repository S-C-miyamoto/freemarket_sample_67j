# README
スクラムマスター　宮本
メンバー　作田　大石　溝口
よろしくお願い申し上げます。

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
|self_introduction|text|-------|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birth_year|string|null: false|
|birth_month|string|null: false|
|birth_day|string|null: false|

### Association
- has_many :items dependent: :destroy
- has_one :address
- has_one :creditcard


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|state|text|null: false|
|condition|string|null: false|
|price|integer|null: false|
|category_id|references|null: false, foreign_key: true|
|brand_id|references|null: false, foreign_key: true|
|buyer_id|references|foreign_key: true|
|seller_id|references|null: false, foreign_key: true|
### Association
- has_many :images dependent: :destroy
- belongs_to :category
- belongs_to :buyer,class_name: "User"
- belongs_to :seller,class_name: "User"
- belongs_to :brand


## addressテーブル
|Column|Type|Options|
|------|----|-------|
|zipcode|integer|null: false｜
|prefecture|string|null: false｜
|city|string|null: false｜
|detail_address|string|null: false｜
|building|string|-------｜
|optional_phone_number|string|-------｜
|user_id|references|null: false, foreign_key: true｜
### Association
- belongs_to :user

## imagesテーブル
|Column|Type|Options｜
|------|----|-------|
|image|text|null:false|
|item_id|references|null: false, foreign_key: true|
### Association
- belongs_to :item

## creditcardテーブル
|Column|Type|Options|
|------|----|-------|
|Column|Type|Options|
|card_id|text|null: false|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string| null:false|
|ancestry|string| null:false|
### Association
- has_many :items
- has_ancestry

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
### Association
- has_many :items