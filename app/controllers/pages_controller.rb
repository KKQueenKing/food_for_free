class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :style_guide]

  def home
  end

  def about
  end

  def my_profile
  # controller should set user as the current user, include methods to
  # show current_user.donations or current_user.claims as applicable
    # @donations = current_user.donations unless empty?
    # @claims = current_user.claims unless empty?
    @my_donations = FoodDonation.where(FoodItem.first.business_id == current_user.busniess.id)
  end

  def profile
  end

  def style_guide
    @charity = Charity.last
  end
end
