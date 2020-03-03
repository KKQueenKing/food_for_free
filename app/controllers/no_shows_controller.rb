class NoShowsController < ApplicationController
   # only appears for business
  def create
    # claim ID
    # redirect to claim
  end

  def destroy
    @no_show = NoShow.find(params[:id])
    @no_show.destroy
  end
end
