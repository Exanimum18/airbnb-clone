class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :delete]
  def create
  end

  def edit
    #@user = User.find(params[:id])
  end

  def update
    @user.update user_params
  end

  def destroy
    @user.delete
  end

  def show
    #@user = User.find(params[:id])
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :guide)
  end
end