class ParticipationController < ApplicationController
  def create
    @participation = Participation.find(params[:id])
    # ####
    #@participation = current_user.participation.build(event_params)
    
    #if @participation.save
    #  redirect_to :action => 'show', :id => @event.id
    #else
    #  render :new
    #end
  end

  def show
    @participation = Participation.find_by_id(params[:participation_id])
  end

  private
  def event_params
    params.require(:participation).permit(:event_id)
  end
end
