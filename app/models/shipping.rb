class Shipping < ApplicationRecord
  belongs_to :item

  validates :shipping_method, presence: true
  validates :shipping_area, presence: true
  validates :shipping_days, presence: true
  validates :fee_burden, presence: true
end
