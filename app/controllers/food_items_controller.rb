class FoodItemsController < ApplicationController
  before_action :set_food_item, only: [:show, :edit, :update, :destroy]
  def index
    @food_items = FoodItem.all
  end

  def new
    @food_item = FoodItem.new
    @food_donation = FoodDonation.new.find(params[:food_donation_id])
  end

  def create
    @food_item = FoodItem.new(food_item_params)
    @business = Business.find(current_user.id)
    @food_donation = FoodDonation.find(params[:food_donation_id])
    @food_item.business = @business
    @food_item.food_donation = @food_donation

    if @food_item.save!
      redirect_to edit_food_donation_path(@food_donation)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @food_item.destroy
  end

  private

  def set_food_item
    @food_item = FoodItem.find(params[:id])
  end

  def food_item_params
    params.require(:food_item).permit(:name, :expiry_date, :description, :quantity, :measure, :photo)
  end
end
