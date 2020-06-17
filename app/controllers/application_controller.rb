class ApplicationController < ActionController::Base
  before_action :check_login
  helper_method :current_user

  private
  def check_login
    redirect_to login_path unless :current_user
  end

  def current_user
    User.find_by(email: session[:user_session])
  end

end
