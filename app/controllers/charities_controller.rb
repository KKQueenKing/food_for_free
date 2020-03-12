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
    @charity = Charity.new(charity_params)
    @charity.user = current_user
    if @charity.save!
      redirect_to charity_path(@charity), notice: "Welcome #{@charity.name}. You will be contacted by admin to verify your account."
    else
      render :new
    end
  end

  def edit
  end

  def update
    @charity.update(charity_params)
    redirect_to my_profile_path, notice: "#{@charity.name} account has been updated."
  end

  def destroy
    @charity.destroy
    redirect_to root_path, notice: "#{@charity.name} account has been deleted."
  end

  private

  def set_charity
    @charity = Charity.find(params[:id])
  end

  def charity_params
    params.require(:charity).permit(:name, :bio, :address, :email, :website, :phone_number, :photo)
  end
end
