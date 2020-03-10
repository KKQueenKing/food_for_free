class FoodDonationsController < ApplicationController
  before_action :set_food_donation, only: [:show, :edit, :update, :destroy]
  def index
    if !current_user.charity
      redirect_to root_path, notice: "Sorry, you're not authorised to view this page."
    end
    @donations = FoodDonation.joins(:food_items, :donation_availabilities).distinct.where(status: "unclaimed")
    if params[:query].present?
      sql_query = " \
          food_donations.address ILIKE :query \
          OR food_items.name ILIKE :query \
          OR food_items.description ILIKE :query \
          OR businesses.name ILIKE :query \
        "
      @food_donations = @donations.joins(food_items: :business).where(sql_query, query: "%#{params[:query]}%")
    # @food_donations = FoodDonation.all
      @food_donations = @donations unless @food_donations.first
    else
      @food_donations = @donations
    end

    @markers = @food_donations.map do |food_donation|
      {
        lat: food_donation.latitude,
        lng: food_donation.longitude,
        image_url: helpers.asset_url('FFF_pindrop_yellow.png'),
        infoWindow: render_to_string(partial: "info_window", locals: { food_donation: food_donation })
      }
    end

  end

  def show
    unless (current_user.charity) || (current_user == @food_donation.food_items.first.business.user)
      redirect_to root_path, notice: "Sorry, you're not authorised to view this page."
    end
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
    if @food_items.first && @food_donation.update(food_items: @food_items)
      redirect_to food_donation_path(@food_donation), notice: "Food Donation has been updated."
    else
      render :edit, alert: "Food Items required."
    end
  end

  def destroy
    @food_donation.destroy

    redirect_to my_profile_path
  end

  # def status_toggle
  #   @food_donation.update(status: "claimed")
  # end

  private

  def set_food_donation
    @food_donation = FoodDonation.find(params[:id])
  end

  def food_donation_params
    params.require(:food_donation).permit(:distance_limit, :address, :dropoff)
  end
end
