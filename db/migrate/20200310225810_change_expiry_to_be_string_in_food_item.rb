class ChangeExpiryToBeStringInFoodItem < ActiveRecord::Migration[5.2]
  def change
    change_column :food_items, :expiry_date, :string
  end
end
