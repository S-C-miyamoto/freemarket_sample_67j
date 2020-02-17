class Address < ApplicationRecord
  belongs_to :user, optional: true

  NAME_REGEX = /\A([ぁ-んァ-ヶー一-龠])+\z/i
  validates :zipcode,         presence: true
  validates :prefecture,      presence: true, format: { with: NAME_REGEX }
  validates :city,            presence: true, length: {maximum: 50}
  validates :detail_address,  presence: true, length: {maximum: 100}
end
