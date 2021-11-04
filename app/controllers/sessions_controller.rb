class SessionsController < ApplicationController

  skip_before_action :authorized, only: [:new, :create, :welcome]

  def new
  end

  def create
    puts User.create(username: params[:username]).valid?
    @user = User.find_by(username: params[:username])

    if @user&.authenticate(params[:password])
      session[:user_id] = @user.id
      
      redirect_to '/newsfeed'
    else
      redirect_to '/log-in'
    end
  end

  def login
  end

  def log_out
    session[:user_id] = nil
    redirect_to '/'
  end

  def welcome
    if logged_in?
      redirect_to '/newsfeed'
    end
  end
end
