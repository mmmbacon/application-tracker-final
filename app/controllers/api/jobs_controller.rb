# class Api::V1::FruitsController < ApplicationController
#   def index
#     render json: Fruit.all
#   end

#   def create
#     fruit = Fruit.create(fruit_params)
#     render json: fruit
#   end

#   def destroy
#     Fruit.destroy(params[:id])
#   end

#   def update
#     fruit = Fruit.find(params[:id])
#     fruit.update_attributes(fruit_params)
#     render json: fruit
#   end

#   private

#   def fruit_params
#     params.require(:fruit).permit(:id, :name, :description)
#   end
# end


class Api::JobsController < ApplicationController
  def index
    render json: { :jobs => [
      {
        :guid => '0001', #generate later
        :title => 'Senior Developer',
        :company => 'Google',
        :description => 'Long description about the job of being a develoepr with google',
        :status => 'Applied',
        :application_deadline => 'July 30, 2021',
        :interview_date => '',
        :offer => '',
        :salary => 500000,
        :url => 'google.com/job-url-here',
        :location => 'San Francisco',
        :links => ['Resume file', 'Cover Letter File'],
        :user_id => '0001',
        :contact_name => 'John Doe',
        :contact_email => 'j.doe@gmail.com',
        :contact_phone => '999999999',
        :contact_socialmedia => 'linkedin.com/jdoe',
      },
      {
        :guid => '0002', #generate later
        :title => 'Burger Flipper',
        :company => 'McDonalds',
        :description => 'Long description about the job of being a fry cook at McDonalds',
        :status => 'Interview',
        :application_deadline => 'July 30, 2021',
        :interview_date => 'August 10, 2021',
        :offer => '',
        :salary => 30000,
        :url => 'mcdonalds.com/job-url-here',
        :location => 'New York',
        :links => ['Resume file', 'Cover Letter File'],
        :user_id => '0002',
        :contact_name => 'Ronald McDonald',
        :contact_email => 'ronald@gmail.com',
        :contact_phone => '111111111',
        :contact_socialmedia => 'linkedin.com/ronaldmcD',
      }
    ]}.to_json
  end

  def create
  end

  def destroy
  end

  def update
  end

end