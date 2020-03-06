class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show, :destroy]
  def show
    if (current_user != @claim.charity.user) || (current_user != @claim.business.user)
      redirect_to root_path, notice: "Sorry, you're not authorised to view this page."
    end
  end

  def create
    @claim = Claim.new
    @claim.food_donation = FoodDonation.find(params[:food_donation_id])
    @claim.charity = current_user.charity
    @claim.business = @claim.food_donation.food_items.first.business
    if @claim.save!
      redirect_to claim_path(@claim), notice: "Claimed!"
    else
      redirect_to food_donation_path(@food_donation), notice: "Error, please try again."
    end
  end

  def destroy
    @claim.destroy
  end

  private

  def set_claim
    @claim = Claim.find(params[:id])
  end
end
