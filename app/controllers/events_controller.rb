class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.events.build(event_params)
    p @event
    p @event.errors
    #@event = Event.new(post_params)
    #@event.user_id = session[:user_id]
    if @event.save
      redirect_to :action => 'show', :id => @event.id
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:event).permit(:title)
  end

  def event_params
    params.require(:event).permit(:title, :user_id, :time)
  end

end
