class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 # skip_before_filter  :verify_authenticity_token
  
  
  before_filter :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:utype, :name, :email, :community, :nationality, :address, :number, :password, :password_confirmation, :community_id) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :community, :nationality, :address, :number, :password, :password_confirmation) }
  #  promotion_parameter_sanitizer.for()
  end
  
end
