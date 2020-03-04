class BusinessesController < ApplicationController
  before_action :set_business, only: [:show, :edit, :update, :destroy]
  def index
    @businesses = Business.all
  end

  def new
    @user = current_user
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    @user = current_user
    @business.user = @user
    if @business.save!
      redirect_to my_profile_path, notice: "Welcome #{@business.name}."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    @business.update(business_params)

    redirect_to my_profile_path, notice: "#{@business.name} account has been updated."
  end

  def destroy
    @business.destroy

    redirect_to root_path, notice: "#{@business.name} account has been deleted."
  end

  private

  def set_business
    @business = Business.find(params[:id])
  end

  def business_params
    params.require(:business).permit(:name, :bio, :address, :email, :industry, :photo)
  end
end
