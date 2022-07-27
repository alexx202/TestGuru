class SessionsController < Devise::SessionsController
  def create
    super
    if current_user.is_a?(User)
      flash[:success] = "Welcome #{current_user.first_name} #{current_user.last_name} to TestGuru"
    end
  end
end
