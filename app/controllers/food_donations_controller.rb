class FoodDonationsController < ApplicationController
  before_action :set_food_donation, only: [:show, :edit, :update, :destroy]
  def index
    @food_donations = FoodDonation.all

    @markers = @food_donations.map do |food_donation|
      {
        lat: food_donation.latitude,
        lng: food_donation.longitude,
        image_url: helpers.asset_url('FFF_pindrop_yellow.png')
        # infoWindow: render_to_string(partial: "info_window", locals: { tool: tool })
      }
    end
  end

  def show
  end

  def new
    @food_donation = FoodDonation.new
  end

  def create
    @food_donation = FoodDonation.new(food_donation_params)
    if @food_donation.save!
      redirect_to edit_food_donation_path(@food_donation), notice: "Donation started. Add Food Items."
    else
      render :new
    end
  end

  def edit

  end

  def update
    @food_items = FoodItem.where(food_donation: @food_donation)
    @food_donation.update(food_items: @food_items)

    redirect_to my_profile_path, notice: "Food Donation has been updated."
  end

  def destroy
    @food_donation.destroy

    redirect_to my_profile_path
  end

  private

  def set_food_donation
    @food_donation = FoodDonation.find(params[:id])
  end

  def food_donation_params
    params.require(:food_donation).permit(:distance_limit, :address, :dropoff)
  end
end
