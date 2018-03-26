class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:user][:username], password: params[:user][:password])
    if @user.present?
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: "Login successful"
    else
      redirect_to login_path, alert: "login failed"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
