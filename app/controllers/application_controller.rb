class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :check_authentication

  def check_authentication
    redirect_to login_url if session[:user_id].blank?
  end

  helper_method :current_user
  def current_user
    @user ||= User.find_by(id: session[:user_id])
    @user
  end
end
