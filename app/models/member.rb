class Member < ApplicationRecord
  has_secure_password

  has_many :entries, dependent: :destroy

  validates :name, presence: true,
    format: {
      with: /\A[A-Za-z][A-Za-z0-9]*\z/,
      allow_blank: true,
      message: :invalid_member_name
    },
    length: { minimum: 2, maximum: 20, allow_blank: true },
    uniqueness: { case_sensitive: false }
  validates :full_name, presence: true, length: { maximum: 20 }
  validates :password, presence: { if: :current_password }

  attr_accessor :current_password
  validates :password, presence: { if: :current_password }
end
