class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
    @self = current_user.try(:id) == @user.id
    respond_to do |format|
      format.html
      format.json { render json: @user.as_json(only: [:type, :name, :email, :dob, :community, :nationality, :address, :number], include: [branches: {only:[:id, :name] } ] ) }
    end
  end
  
  def showp
    @user = User.find(params[:id])
    @self = current_user.try(:id) == @user.id
    respond_to do |format|
      format.html
      format.json { render json: @user.as_json(only: [:type, :name, :email, :dob, :community, :nationality, :address, :number], include: [promotions: {only:[:id, :name, :discount, :description, :end_date, :pimage ] } ] ) }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors.full_messages }
      end
    end
  end
  def communityt
    @user=User.find(params[:id])
  end
  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:type, :name, :email, :dob, :community, :nationality, :address, :number)
    end
end
