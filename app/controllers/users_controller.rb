class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(post_params)
    if User.where(:name => @user.name).blank?
      if @user.save
        session[:user_id] = @user.id
        redirect_to :action => 'show', :id => session[:user_id]
      else
        render :new
      end
    else
      flash.now[:alert] = "A user already exists with that name. Please try again."
      render :new
    end
  end

  private
  def post_params
    params.require(:user).permit(:name, :id)
  end
end
