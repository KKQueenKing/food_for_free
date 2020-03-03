class FoodItem < ApplicationRecord
  MEASURES = ['Grams', 'Kilograms', 'Servings', 'Millilitres', 'Litres']
  belongs_to :business
  belongs_to :food_donation, optional: true
  has_many :food_item_tags
  has_many :tags, through: :food_item_tags

  validates :name, presence: true
  validates :expiry_date, presence: true
  validates :description, presence: true
  validates :quantity, presence: true
  validates :measure, presence: true
  validates :measure, :inclusion { in: MEASURES }
end
