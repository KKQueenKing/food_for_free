class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || root_path
  end

  def after_sign_up_path_for(resource)
    resource.account == 'Business' ? new_business_path : new_charity_path || root_path
  end

  def default_url_options
  { host: ENV["DOMAIN"] || "localhost:3000" }
end

  protected

  # def destroy_invalid_food_donations
  #   food_donations = FoodDonation.where()
  # end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone_number, :account])
  end
end
