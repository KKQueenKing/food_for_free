class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :style_guide]

  def home
  end

  def about
  end

  def my_profile
  end

  def profile
  end

  def style_guide
    @charity = Charity.last
  end
end
