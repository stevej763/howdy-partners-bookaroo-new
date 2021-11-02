class UsersController < ApplicationController
  def new
    puts "New user endpoint, creating new user instance"
    @user = User.new
  end

  def create
    # puts params
    @user = User.create(params.require(:user).permit(:username,        
      :password))
      session[:user_id] = @user.id
      redirect_to '/welcome'
  end
end
