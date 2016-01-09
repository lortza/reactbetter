class UsersController < ApplicationController

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all 
  end #index

  def show
  end #show

  def new
    @user = User.new 
  end #new

  def create
    @user - User.new(user_params)
    if @user.save
      session[user_id] = @user.id
      redirect_to @user
    else
      render :new
    end #if
  end#create
  
  def edit
  end #edit

  def update
    if @user.update(user_params)
      reditect_to @user, notice: "#{@user.name}'s account has been successfully updated."
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
    @user = User.find(params[:id])
  end #set_user

  def user_params
    params.require(:user).permit(:name, :email, :username, :password, :admin) 
  end #user_params
    
end #UsersController
