class NoShowsController < ApplicationController
  def create
    @no_show = NoShow.new
    @no_show.claim = Claim.find(params[:claim_id])
    if @no_show.save
      redirect_to claim_path(@no_show.claim), notice: "No show report submitted."
    else
      redirect_to claim_path(@claim), notice: "Unknown error, please try again."
    end
  end

  def destroy
    @no_show = NoShow.find(params[:id])
    if @no_show.destroy
      redirect_to claim_path(@no_show.claim), notice: "Your report has been removed from our system, thank you."
    end
  end
end
