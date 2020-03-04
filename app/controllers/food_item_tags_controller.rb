class FoodItemTagsController < ApplicationController
  def create
    @food_item_tag = FoodItemTag.new
    @food_item_tag.donation = @food_donation
    @food_item_tag.food_item = @food_item
  end

  def destroy
    @food_item_tag.destroy
  end

  private

  def set_food_item
    # @food_item = FoodItem.find()
  end
end
