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
