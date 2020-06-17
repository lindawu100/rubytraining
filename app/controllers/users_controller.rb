class UsersController < ApplicationController

  def index
  end

  def login
    @user = User.new
  end

  def sign_in
    user = User.find_by(email: user_params[:email], password: user_params[:password])

    if user
      session[:user_session] = user.email
      redirect_to root_path
    else
      redirect_to login_path
    end

  end

  def sign_up
    @user = User.new
  end

  def registration
    @user = User.new(user_params)

    if @user.save
      session[:user_session] = @user.email
      redirect_to root_path
    else
      render :sign_up
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
