class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  # only appears for charity
  def new
    # @user = current_user
    @review = Review.new
  end

  def create
    @review = Review.new
    ####
    @review.save!
  end

  def edit
    #
  end

  def update
    #
    @review.save!
  end

  def destroy
    @review.destroy
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end
end
