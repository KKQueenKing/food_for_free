class FoodItemsController < ApplicationController
  before_action :set_food_item, only: [:show, :edit, :update, :destroy]
  def index
    @food_items = FoodItem.all
  end

  def new
    @food_item = FoodItem.new
    @food_donation = FoodDonation.new.find(params[:food_donation_id])
    @food_item.food_item_tags.build
  end

  def create
    @food_item = FoodItem.new(food_item_params)
    @business = Business.find_by(user: current_user)
    @food_donation = FoodDonation.find(params[:food_donation_id])
    @food_item.business = @business
    @food_item.food_donation = @food_donation

    if @food_item.save!
      params[:food_item][:food_item][:name].shift
      params[:food_item][:food_item][:name].each do |tag_name|
        food_item_tag = FoodItemTag.new
        food_item_tag.tag = Tag.find_by(name: tag_name)
        food_item_tag.food_item = @food_item
        food_item_tag.save!
      end
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
    @food_donation = @food_item.food_donation
    @food_item.update(food_item_params)

    redirect_to edit_food_donation_path(@food_donation), notice: "Food Item has been updated."
  end

  def destroy
    @food_donation = @food_item.food_donation
    @food_item.destroy

    redirect_to edit_food_donation_path(@food_donation)
  end

  private

  def set_food_item
    @food_item = FoodItem.find(params[:id])
  end

  def food_item_params
    params.require(:food_item).permit(:name, :expiry_date, :description, :quantity, :measure, :photo)
  end
end
