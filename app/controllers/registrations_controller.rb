class RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters

  def create
    build_resource(sign_up_params)
    resource_saved = resource.save
    yield resource if block_given?
    if resource_saved
      for branch in params[:branches_to_be_added].split(',')
        b=Branch.new(name: branch)
        @user.branches << b
      end
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:utype, :name, :branches_to_be_added, :dob, :community, :nationality, :address, :number,
        :email, :password, :password_confirmation)
    end
    devise_parameter_sanitizer.for(:account_update) do |u|
      u.permit(:name, :dob, :community, :nationality, :address, :number,
        :email, :password, :password_confirmation, :current_password)
    end
    
  end
  


end