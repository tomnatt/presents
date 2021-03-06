class SessionsController < ApplicationController
  skip_before_action :check_authentication

  def create
    user = User.omniauth(env['omniauth.auth'])
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_url
  end
end
