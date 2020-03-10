class FoodDonation < ApplicationRecord
  after_initialize :set_defaults
  has_many :food_items
  has_many :food_item_tags, through: :food_items
  has_many :tags, through: :food_item_tags
  has_many :donation_availabilities, dependent: :destroy
  has_one :claim, dependent: :restrict_with_exception
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?


  validates :address, presence: true

  private

  def set_defaults
    self.dropoff  ||= false           #will set the default value only if it's nil
    self.status = 'unclaimed'
  end
end
