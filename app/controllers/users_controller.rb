class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      create_user_session(@user)
      redirect_to cookies[:requested_path]
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
