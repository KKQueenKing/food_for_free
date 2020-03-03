class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show, :destroy]
  def show
  end

  def new
    @claim = Claim.new # do we need this if not on own page??
  end

  def create
    @claim = Claim.new
    # @claim.food_donation = find ID
  end

  def destroy
    # set claim
    @claim.destroy
  end

  private

  def set_claim
    @claim = Claim.find(params[:id])
  end
end
