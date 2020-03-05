class ChangeDateFormatInDonationAvailabilities < ActiveRecord::Migration[5.2]
  def change
    change_column :donation_availabilities, :start_time, :datetime
    change_column :donation_availabilities, :end_time, :datetime
  end
end
