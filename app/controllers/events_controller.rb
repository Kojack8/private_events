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
    @event = Event.new(post_params)
    @event.user_id = session[:user_id]
    if @event.save
      redirect_to :action => 'show', :id => @event.id
    else
      p @event.errors
      render :new
    end
  end

  private
  def post_params
    params.require(:event).permit(:title)
  end
end
