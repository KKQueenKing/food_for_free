class DonationAvailabilitiesController < ApplicationController
  before_action :set_donation_availability, only: [:edit, :update, :destroy]

  def create
    @donation_availability = DonationAvailability.new(donation_availability_params)
    @donation_availability.food_donation = FoodDonation.find(params[:food_donation_id])
    if @donation_availability.save!
      redirect_to edit_food_donation_path(@donation_availability.food_donation), notice: "Added!"
    else
      redirect_to edit_food_donation_path(@donation_availability.food_donation), notice: "Error, please try again."
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @donation_availability.destroy
  end

  private

  def set_donation_availability
    @donation_availability = DonationAvailability.find(params[:id])
  end

  def donation_availability_params
    params.require(:donation_availability).permit(:start_time, :end_time)
  end
end
