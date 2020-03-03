class DonationAvailabilitiesController < ApplicationController
  before_action :set_donation_availability, only: [:edit, :update, :destroy]
  # ??????
  def new
  end

  def create
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
end
