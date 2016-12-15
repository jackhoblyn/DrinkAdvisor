class UsersController < ApplicationController

  def show
  end

  def new
    @user = User.new
  end

  def create
    user = User.new(user_params)
    if user.save
	  Usermailer.welcome (@user).deliver_now
      session[:user_id] = user.id
      redirect_to '/', notice: 'Account created successfully'
    else
      redirect_to '/signup', flash[:error] = 'An error occured!'
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end
end