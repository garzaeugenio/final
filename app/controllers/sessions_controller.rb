class SessionsController < ApplicationController
  layout false
  skip_before_action :require_user

  def create
    user = User.find_by(email: params["email"])
    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      redirect_to root_path, notice: "Welcome!"
    else
      redirect_to root_path, alert: "Please log in."
    end
  end

  def destroy
    # Do sign-out
    session["user_id"] = nil
    redirect_to root_path, notice: "Come back soon!"
  end

end
