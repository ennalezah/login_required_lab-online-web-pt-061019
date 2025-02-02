class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    logged_in? ? session[:name] : nil
  end

  private 

  def logged_in?
    !!session[:name]
  end
end
