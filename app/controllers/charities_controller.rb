class CharitiesController < ApplicationController
  before_action :set_charity, only: [:show, :edit, :update, :destroy]
  def index
    @charities = Charity.all
  end

  def show
  end

  def new
    @charity = Charity.new
  end

  def create
    @charity = Charity.new
    #
    @charity.save!
  end

  def edit
  end

  def update
  end

  def destroy
    @charity.destroy
  end

  private

  def set_charity
    @charity = Charity.find(params[:id])
  end
end
