class CreateClaims < ActiveRecord::Migration[5.2]
  def change
    create_table :claims do |t|
      t.references :food_donation, foreign_key: true
      t.references :charity, foreign_key: true
      t.references :business, foreign_key: true

      t.timestamps
    end
  end
end
