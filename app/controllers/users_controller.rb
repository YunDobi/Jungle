class UsersController < ApplicationController
  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      p 'hello'
      session[:user_id] = user.id
      redirect_to '/'
    else
      p user.errors.full_messages
      redirect_to '/signup'
    end
  end

  private

  def user_params
    params.require(:user).permit(:Firstname, :Lastname, :email, :password, :password_confirmation)
  end

end
