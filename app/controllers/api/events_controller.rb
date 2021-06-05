class Api::EventsController < ApplicationController
  def index
    render json: { :events => [
      {
        :guid => '0001', #generate later
        :job_id => '0001',
        :title => 'Follow Up',
        :notes => 'Follow Up with my contact',
        :date => '2021/07/20',
        :location => '',
      },
      {
        :guid => '0002', #generate later
        :job_id => '0002',
        :title => 'Interview w/ Company',
        :date => '2021/01/01',
        :location => '123 Vancouver St, Victoria BC',
        :notes => 'Call to confirm'
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
