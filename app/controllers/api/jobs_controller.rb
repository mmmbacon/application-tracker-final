class Api::JobsController < ApplicationController
  before_action :logged_in_user

  def index

    @user = User.find(session[:user_id])
    @user_jobs = Job.where(user_id: @user.id)
    
    if @user_jobs
      render json: {
        jobs: @user_jobs
      }
    else 
      render json: {
        status: 500,
        errors: ['job not found']
      }
    end
  end

  def show
    @user = User.find(session[:user_id])
    @job = Job.where(user_id: @user.id, id: params[:id])

    if @job
      render json: {
        job: @job
      }
    else 
      render json: {
        status: 500,
        errors: ['job not found']
      }
    end
  end

  def create
    @user = User.find(session[:user_id])
    @job = Job.new(job_params)
    @job.user_id = @user.id
    @job.save!
    if params[:event]
      @event = Event.new(event_params)
      @event.job_id = @job.id
      @event.save!
    end

    if @job
      if @event
        render json: {
          job: @job,
          event: @event
        }
      elsif 
        render json: {
          job: @job
        }
      end
    else 
      render json: {
        status: 500,
        errors: ['Job or Event could not be created']
      }
    end
  end

  def destroy
  end

  def update :id
    @job = Job.find(params[:id]).where(user_id: session[:user_id]) 
    @job = Job.update(job_params)

    # if params[:event]
    #   @event = Event.update(event_params)
    #   @event.job_id = @job.id
    #   @event.save!
    # end

    if @job
      if @event
        render json: {
          job: @job,
          event: @event
        }
      elsif 
        render json: {
          job: @job
        }
      end
    else 
      render json: {
        status: 500,
        errors: ['Job or Event could not be created']
      }
    end
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
  
    def event_params
      params.require(:event).permit(
        :title,
        :date,
        :location,
        :details,
      )
    end
end