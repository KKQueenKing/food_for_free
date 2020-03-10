class Claim < ApplicationRecord
  belongs_to :food_donation
  belongs_to :charity
  belongs_to :business
  has_one :review, dependent: :destroy
end
