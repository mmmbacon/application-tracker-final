class Api::EventsController < ApplicationController
  before_action :logged_in_user, :get_job 

  def index
    @events = @job.events

    if @events
      render json: {
        events: @events
      }
    else 
      render json: {
        status: 500,
        errors: ['event not found']
      }
    end
  end

  def show
    @event = Event.find(params[:id])

    if @event
      render json: {
        event: @event
      }
    else 
      render json: {
        status: 500,
        errors: ['event not found']
      }
    end
  end

  def create
    @event = Event.create(event_params)
  end

  def destroy
  end

  def update
  end

  private

  def get_job
    @job = Job.find(params[:job_id])
    
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
