class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]


  def search
    @query = params[:query]
    @user = User.where("nom LIKE ?", ["%#{@query}%"])
    render 'index'
  end

  def index
    # if params[:search].present?
    #   if params[:search][:service].present? && params[:search][:nom].present?
    #     users = users.search_service(params[:search][:service]).search_nom(params[:search][:nom])
    #   elsif params[:search][:service].present?
    #     users = users.search_service(params[:search][:service])
    #   elsif params[:search][:nom].present?
    #     users = users.search_nom(params[:search][:nom])
    #   end
    # end
    # @user = User.where(is_client: 0).all
    @user = User.all
    # @user_id = User.find_by_id(params[:id])
    # @users = User.order(:created_at).page(params[:page])
  
  end

  def new
    @user = User.new
  end


  def show
    #@user = User.find(session[:auth]['id'])
    @user = User.find_by_id(params[:id])
    #@nom = @user.nom(user_params)
    #@user = User.find(params[:id])@user = User.find(params[:id])
    #render template: 'projets/form'
  end

  def edit
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
    params.require(:user).permit(:nom, :email, :password, :password_confirmation, :presentation, :addresse, :service )
  end

end



