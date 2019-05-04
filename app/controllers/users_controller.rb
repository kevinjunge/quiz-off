class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update]
  def new
    user = User.new
  end

  def create
    user = User.new user_params
    if user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update user_params
      flash[:success] = "Your profile updated successfully!"
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :role)
  end

  def find_user
    @user = User.find(current_user)
  end
  
end