class FoodItemTagsController < ApplicationController
  def create
    @food_item_tag = FoodItemTag.new
    @food_item_tag.tag = Tag.find(params[:tag_id]) # ??? will need to check with form
    # displayed tags label method tag name, submit method id.
    @food_item_tag.food_item = @food_item
  end

  def destroy
    @food_item_tag = FoodItemTag.find(params[:id])
    @food_item_tag.destroy
  end
end
