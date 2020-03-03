class Charity < ApplicationRecord
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :claims

  validates :name, presence: true
  validates :bio, presence: true
  validates :address, presence: true
  validates :email, presence: true, uniqueness: true
end
