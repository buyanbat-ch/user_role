class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @saved = @user.save
    if @saved
      flash[:notice] = "Saved successfully"
      redirect_to users_path
    else
      render :new
    end
  end

private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email)
  end

end
