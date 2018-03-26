class StaticPagesController < ApplicationController
  def home
    @welcome = "Hello there!"
  end

  def help
    @contact_name = "Bob Cobb"
  end
end
