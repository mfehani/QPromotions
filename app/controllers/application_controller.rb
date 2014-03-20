class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 # skip_before_filter  :verify_authenticity_token
  
  
  before_filter :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:utype, :name, :email, :dob, :community, :nationality, :address, :number, :password, :password_confirmation, :community_id) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
    
  end
  
end
