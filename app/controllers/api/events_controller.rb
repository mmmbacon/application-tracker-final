class Api::EventsController < ApplicationController
  def index
    render json: Event.all.to_json
  end

  def create
    @event = Event.create(event_params)
  end

  def destroy
  end

  def update
  end

  private

  def event_params
    params.require(:event).permit(
      :job_id,
      :title,
      :date,
      :location,
      :details,
    )
  end
end
