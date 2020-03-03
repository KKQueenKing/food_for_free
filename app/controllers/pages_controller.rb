class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :style_guide]

  def home
  end

  def about
  end

  def my_profile
  # controller should set user as the current user, include methods to
  # show current_user.donations or current_user.claims as applicable
  end

  def profile
  end

  def style_guide
  end
end
