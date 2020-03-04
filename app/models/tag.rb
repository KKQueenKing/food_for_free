class Tag < ApplicationRecord
  TAG = ["Gluten-Free", "Dairy-Free", "Lactose-Free", "Halal", "Kosher",
  "Vegetarian", "Vegan", "Packaged Food", "Prepared Meal", "Fruit", "Vegetable",
  "Sugar-Free", "Sweet", "Drink", "Canned Food", "Pickles and Preserves",
  "Long-Lasting", "Dairy", "Snack", "Nut-Free", "Meat", "Fish", "Poultry",
  "Grains", "Baked Goods", "Condiments", "Breakfast", "Soup", "Low Sodium"]
  has_many :food_item_tags
  validates :name, inclusion: { in: TAG,
    message: "Not a valid tag, please select from tags displayed." }
end
