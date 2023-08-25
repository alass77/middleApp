class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end


  def show
     #@user = User.find(session[:auth]['id'])
    @user = User.find_by_id(params[:id])
    #@nom = @user.nom(user_params)
    #@user = User.find(params[:id])@user = User.find(params[:id])
    
  end

  def create
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to home, notice: "User was successfully updated." }
       # format.json { render :show, status: :ok, location: @publication }
      else
        format.html { render :edit, status: :unprocessable_entity }
      #  format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private

  def set_user
    #@user = User.find(params[:id])
    @user = User.find_by_id(params[:id])
  end

  def user_params
    params.require(:user).permit(:nom, :email, :password, :password_confirmation, :presentation, :adresse, :service )
  end

end



