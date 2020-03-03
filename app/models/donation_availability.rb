class DonationAvailability < ApplicationRecord
  belongs_to :food_donation

  validates :start_time, presence: true
  validates :end_time, presence: true
end
