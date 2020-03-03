class Business < ApplicationRecord
  INDUSTRIES = ["Health and Social Services", "Construction and Manufacturing",
    "Education and Training", "Retail Trade", "Public Administration",
    "Professional and Technical Services", "Hospitality", "Logistics", "Other Services",
    "Mining and Resources", "Clean Energy", "Agriculture"]

  has_one_attached :photo
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :food_items
  has_many :donations, through: :food_items
  has_many :claims

  validates :name, presence: true
  validates :bio, presence: true
  validates :address, presence: true
  validates :email, presence: true, uniqueness: true
  validates :industry, inclusion: { in: INDUSTRIES }
end
