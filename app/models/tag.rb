class Tag < ApplicationRecord
  has_many :food_item_tags

  validates :name, presence: true
end
