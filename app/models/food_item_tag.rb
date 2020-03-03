class FoodItemTag < ApplicationRecord
  belongs_to :food_item
  belongs_to :tag
end
