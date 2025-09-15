class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_path(@user.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:username, :password, :email)
  end
end
