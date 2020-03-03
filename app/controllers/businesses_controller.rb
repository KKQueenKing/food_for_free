class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  def index
    @businesses = Business.all
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new
    #
    @business.save!
  end

  def show

  end

  def edit

  end

  def update

  end

  def destroy
    @business.destroy
  end

  private

  def set_business
    @business = Business.find(params[:id])
  end
end
