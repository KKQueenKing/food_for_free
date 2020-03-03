class CreateDonationAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :donation_availabilities do |t|
      t.date :start_time
      t.date :end_time
      t.references :food_donation, foreign_key: true

      t.timestamps
    end
  end
end
