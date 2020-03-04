class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show, :destroy]
  def show
  end

  def create
    @claim = Claim.new
    @claim.food_donation = FoodDonation.find(params[:food_donation_id])
    @claim.charity = current_user.charity
    @claim.business = FoodDonation.food_items.first.business
    @claim.save!
  end

  def destroy
    @claim.destroy
  end

  private

  def set_claim
    @claim = Claim.find(params[:id])
  end
end
