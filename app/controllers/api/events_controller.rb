class Api::EventsController < ApplicationController
  def index
    render json: Event.all.to_json
  end

  def create
  end

  def destroy
  end

  def update
  end
end
