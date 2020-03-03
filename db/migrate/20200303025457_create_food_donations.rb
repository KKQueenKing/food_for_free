class CreateFoodDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :food_donations do |t|
      t.boolean :dropoff
      t.integer :distance_limit
      t.string :status
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
