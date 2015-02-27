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
    @user = User.create(user_params)
    if @user.valid?
      redirect_to users_path, notice: "New user added"
    else
      render "new"
    end
  end

  def edit
    @user = User.find_by(id: params["id"])

  end

  def update
    user_params = params.require(:user).permit(:user, :last_name)
    @user = User.find_by(id: params["id"])
    @user.update(user_params)
    if @user.valid?
      redirect_to user_path
    else
      render text: "Could not update"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

end