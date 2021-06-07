class Api::UsersController < ApplicationController
  def index
    @users = User.all

    if @users
      render json: {
        users: @users
      }
    else
      render json: {
        stats: 500,
        errors: ['no users found']
      }
    end
    # render json: User.all.to_json
  end

  def show
    @user = User.find(params[:id])

    if @users
      render json: {
        user: @user
      }
    else 
      redner json: {
        status: 500,
        errors: ['user not found']
      }
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      login!
      render json: {
        status: :created,
        user: @user
      }
    else
      render json: {
        status: 500,
        errors: @user.errors.full_messages
      }
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
