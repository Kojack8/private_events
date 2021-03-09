class ParticipationController < ApplicationController
  def create
    event = Event.find_by_id(params[:event_id])
    user = User.find_by_id(params[:user_id])
  end

  def show
    @participation = Participation.find_by_id(params[:participation_id])
  end
end
