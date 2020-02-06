class Item < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images


  belongs_to :user, foreign_key: 'user_id'
  belongs_to :category
  belongs_to :seller, class_name: "User"
  belongs_to :buyer, class_name: "User", optional: true


  validates :name, :state, :condition, presence: true
end
