## Portfolio

## entriesテーブル
|Column|Type|Options|
|------|----|-------|
|member|references|null: false|
|title|string|null: false|
|body|text|
|posted_at|datetime|null: false|
|status|string|null: false, default: "draft"|

## Association
- belongs_to :author, class_name: "Member", foreign_key: "member_id"
- has_many :images, class_name: "EntryImage"

## Membersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|full_name|string|
|email|string|
|birthday|date|
|administrator|boolean|default: false, null: false|

## Association
- has_many :entries, dependent: :destroy

## Entry_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|entry|references|
|alt_text|string|null: false, default: ""|
|position|integer|

## Associatio
- belongs_to :entry
