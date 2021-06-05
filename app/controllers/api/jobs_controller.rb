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
    render json: Jobs.all.to_json
  end

  def create
  end

  def destroy
  end

  def update
  end

end