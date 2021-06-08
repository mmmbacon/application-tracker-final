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
    render json: Job.all.to_json
  end

  def create
    @job = Job.create(job_params)
  end

  def destroy
  end

  def update
  end

  private

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