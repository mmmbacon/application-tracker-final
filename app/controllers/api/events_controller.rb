class Api::EventsController < ApplicationController
  def index
    render json: Events.all.to_json
  end

  def create
  end

  def destroy
  end

  def update
  end
end
