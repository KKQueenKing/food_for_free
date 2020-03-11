class FoodItem < ApplicationRecord
  MEASURES = ['Grams', 'Kilograms', 'Servings', 'Millilitres', 'Litres']
  has_one_attached :photo
  belongs_to :business
  belongs_to :food_donation, optional: true
  has_many :food_item_tags, inverse_of: :food_item, dependent: :destroy
  accepts_nested_attributes_for :food_item_tags
  has_many :tags, through: :food_item_tags

  validates :name, presence: true
  validates :expiry_date, presence: true
  validates :description, presence: true
  validates :quantity, presence: true
  validates :measure, inclusion: { in: MEASURES }
end
