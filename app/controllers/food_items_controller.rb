class FoodItemsController < ApplicationController
  before_action :set_food_item, only: [:show, :edit, :update, :destroy]
  def index
    @food_items = FoodItem.all
  end

  def new
    @food_item = FoodItem.new
  end

  def create
    @food_item = FoodItem.new
    #
    @food_item.save!
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
end
