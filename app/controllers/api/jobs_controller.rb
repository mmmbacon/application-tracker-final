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
  before_action :logged_in_user

  def index
    @user = get_user
    @jobs = @user.jobs

    if @jobs
      render json: {
        jobs: @jobs
      }
    else 
      render json: {
        status: 500,
        errors: ['job not found']
      }
    end
  end

  def show
    @job = Job.find(params[:id])

    if @job
      render json: {
        job: @job
      }
    else 
      render json: {
        status: 500,
        errors: ['event not found']
      }
    end
  end

  def create
    @job = Job.create(job_params)
  end

  def destroy
  end

  def update
  end

  private

    def get_user
      @user = User.find(params[:user_id])
    end
  
  def job_params
    params.require(:job).permit(
      :user_id,
      :company,
      :title,
      :status,
      :salary,
      :url,
      :location,
      :details,
      :contact_name,
      :contact_email,
      :contact_phone,
      :contact_socialmedia,
    )
  end
end