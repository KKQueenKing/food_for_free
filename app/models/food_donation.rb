class FoodDonation < ApplicationRecord
  has_many :food_items
  has_many :donation_availabilities, dependent: :destroy
  has_one :claim, dependent: :restrict_with_exception

  validates :address, presence: true
  validates :distance_limit, presence: true
  validates :donation_availabilities, presence: true
end
