class Api::UsersController < ApplicationController
  def index
    render json: { :users => [
      {
        :name => 'Austin',
        :guid => '0001' #generate later
      },
      {
        :name => 'Courtney',
        :guid => '0002' #generate later
      }
    ]}.to_json
  end
end
