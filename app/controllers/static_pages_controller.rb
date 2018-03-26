class StaticPagesController < ApplicationController
  def home
    @user = current_user if current_user
    @welcome = "Hello there!"
  end

  def help
    @contact_name = "Bob Cobb"
  end
end
