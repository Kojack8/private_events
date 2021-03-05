class SessionsController < ApplicationController
  def create 
    @user = User.find_by(name: params[:name])

    if @user
      session[:user_id] = @user.id
      redirect_to :controller => 'users', :action => 'show', :id => session[:user_id]
    else
      redirect_to '/login'
    end
  end
end
