class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(message: post_params[:message], user_id: current_user.id)
    redirect_to newsfeed_url
  end

  def newsfeed
    @posts = Post.all.order(created_at: :desc)
  end

  def add_comment
    @comment = Comment.create(message: params[:comment], post_id: params[:post_id], user_id: current_user.id)
    redirect_to newsfeed_url
  end

  private

  def post_params
    params.require(:post).permit(:message)
  end
end
