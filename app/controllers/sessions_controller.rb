class SessionsController < Devise::SessionsController

  def create
    respond_to do |format|
      format.html {
        super
      }
      format.json {
        resource_class.new
        resource = User.find_for_database_authentication(email: params[:user][:email])
        return invalid_login_attempt unless resource

        if resource.valid_password?(params[:user][:password])
          # sign_in(resource_name, resource)
          @user = resource
          render :json => {:success => true}
        else
          invalid_login_attempt
        end
      }
    end
  end

  def destroy
    current_user.reset_authentication_token!
    respond_to do |format|
      format.html {
        super
      }
      format.json {
        # signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
        render :json => { :message => 'Session deleted.' }, success: true, status: 204
      }
    end
  end

  protected
  def invalid_login_attempt
    warden.custom_failure!
    render json: { success: false, message: 'Error with your login or password' }, status: 401
  end
end