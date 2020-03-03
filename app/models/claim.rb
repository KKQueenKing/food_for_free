class Claim < ApplicationRecord
  belongs_to :food_donation
  belongs_to :charity
  belongs_to :business
end
