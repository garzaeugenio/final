class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params["id"])
    @projects = @user.projects

  end

def new
    @user = User.new
  end

  def create
    user_params = params.require(:user).permit!
    User.create(user_params)
    redirect_to users_path
    
  end

  def edit
    @user = User.find_by(id: params["id"])

  end

  def update
    user_params = params.require(:user).permit(:user, :last_name)
    @user = User.find_by(id: params["id"])
    @user.update(user_params)
    redirect_to user_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

end