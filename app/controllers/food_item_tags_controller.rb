class FoodItemTagsController < ApplicationController
  # def new
  #   @food_item = FoodItem.find(params[:food_item_id])
  #   @food_item.food_item_tags.build
  # end

  def create
    @food_item_tag = FoodItemTag.new
    @food_item_tag.tag = Tag.find(params[:tag_id])
    @food_item_tag.food_item = FoodItem.find(params[:food_item_id])
    raise
    @food_item_tag.save!
  end

  def destroy
    @food_item_tag = FoodItemTag.find(params[:id])
    @food_item_tag.destroy
  end
end
