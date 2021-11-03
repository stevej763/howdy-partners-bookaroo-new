class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      
      redirect_to '/newsfeed'
    else
      redirect_to '/log-in'
    end
  end

  def login
  end

  def welcome
    if session[:user_id]
      redirect_to '/newsfeed'
    end
  end
end
