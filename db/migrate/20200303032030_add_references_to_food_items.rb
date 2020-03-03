class AddReferencesToFoodItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :food_items, :food_donation, foreign_key: true
  end
end
