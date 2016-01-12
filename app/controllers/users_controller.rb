class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_signin
  before_action :require_correct_user_or_admin, except: [:index]

  before_action :require_admin, only: [:index]

  before_action :set_background_image

  def index
    @users = User.all 
  end #index

  def show
  end #show

  def new
    @user = User.new 
  end #new

  def create
    @user = User.new(user_params)
    @user.save
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render :new
    end #if
  end#create
  
  def edit
  end #edit

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "#{@user.name}'s account has been successfully updated."
    else
      render :edit
    end #if
  end #update
  
  def destroy
    @user.destroy
    redirect_to root_url, alert: "#{@user.name}'s account has been successfully deleted."
  end #destroy


private
  def set_user
    @user = User.find_by!(username: params[:id]) #modified for friendly URLS
  end #set_user

  def user_params
    params.require(:user).permit(:name, :email, :username, :password, :password_confirmation, :admin) 
  end #user_params

  # def require_correct_user
  #   #@user = User.find(params[:id]) 
  #   unless current_user?(@user)
  #     redirect_to root_url
  #   end #unless
  # end #require_correct_user

  def require_correct_user_or_admin
    unless current_user?(@user) || current_user_admin?
      redirect_to root_url
    end #unless
  end #require_correct_user

  def set_background_image
    @background_image = "grass-1383426-1599x1066.jpg"
  end #set_background_image
    
end #UsersController
