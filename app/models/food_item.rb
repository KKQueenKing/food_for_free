class FoodItem < ApplicationRecord
  MEASURES = ['Grams', 'Kilograms', 'Servings', 'Millilitres', 'Litres']
  belongs_to :business

  validates :name, presence: true
  validates :expiry_date, presence: true
  validates :description, presence: true
  validates :quatity, presence: true
  validates :measure, presence: true
  validates :measure, :inclusion { in: MEASURES }
end
