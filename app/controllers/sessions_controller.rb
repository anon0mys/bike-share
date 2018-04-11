class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      flash[:Error] = 'Incorrect Username or Password'
      render :new
    end
  end

  def destroy
    session.clear
    flash[:notice] = 'You have logged out'
    redirect_to root_path
  end
end
