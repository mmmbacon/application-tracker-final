class Api::UsersController < ApplicationController
  def index
    render json: User.all.to_json
  end

  def create
  end

  def destroy
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def create
  end

  def destroy
  end

  def update
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
