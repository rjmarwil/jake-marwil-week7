class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.find_by(user_name: params[:user_name])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:alert] = "Invalid User Name and/or Password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

end
