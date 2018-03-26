class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :login_required, except: [:home, :help, :new, :create]

  def logged_in?
    current_user
  end

  private

  def login_required
    redirect_to root_path unless logged_in?
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
