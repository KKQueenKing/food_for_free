class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :industry
      t.text :bio
      t.string :email
      t.string :website
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
