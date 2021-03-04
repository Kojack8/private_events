class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(post_params)
    if @user.save
      session[:current_user_id] = @user.id
      render :show
    else
      render :new
    end
  end

  private
  def post_params
    params.require(:user).permit(:name)
  end
end
