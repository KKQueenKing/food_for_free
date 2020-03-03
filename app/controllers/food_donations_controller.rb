class FoodDonationsController < ApplicationController
  before_action :set_food_donation, only: [:show, :edit, :update, :destroy]
  def index
    @food_donations = FoodDonation.all
  end

  def show
  end

  def new
    @food_donation = FoodDonation.new
  end

  def create
    @food_donation = FoodDonation.new
    #
    @food_donation.save!
  end

  def edit
  end

  def update
  end

  def destroy
    @food_donation.destroy
  end

  private

  def set_food_donation
    @food_donation = FoodDonation.find(params[:id])
  end
end
