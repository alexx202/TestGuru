class SessionsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[new create]

  def new; end

  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])
      create_user_session(user)
      redirect_to cookies[:requested_path]
    else
      flash.now[:alert] = 'Verify your name, email, password!'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to tests_path
  end
end
