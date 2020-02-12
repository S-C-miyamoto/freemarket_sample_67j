class Card < ApplicationRecord
  validates :customer_id, :card_id, presence: true
  belongs_to :user, optional: true
end
