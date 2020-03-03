class CreateFoodItems < ActiveRecord::Migration[5.2]
  def change
    create_table :food_items do |t|
      t.references :business, foreign_key: true
      t.string :name
      t.date :expiry_date
      t.string :description
      t.integer :quantity
      t.string :measure

      t.timestamps
    end
  end
end
