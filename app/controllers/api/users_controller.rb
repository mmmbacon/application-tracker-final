class Api::UsersController < ApplicationController
  def index
<<<<<<< HEAD
    render json: User.all.to_json
=======
    render json: { :users => [
      {
        :guid => '0001', #generate later
        :first_name => 'Austin',
        :last_name => 'Kretzschmar',
        :email => 'test@gmail.com',
        :password => 'testpassword1234',
        :password_confirmation => 'testpassword1234'
      },
      {
        :guid => '0002', #generate later
        :first_name => 'Courtney',
        :last_name => 'Amos',
        :email => 'email@exmaple.com',
        :password => 'password',
        :password_confirmation => 'password'
      }
    ]}.to_json
>>>>>>> 7cc95485e80c4adf8695aca45db01f01fe8ebee4
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
