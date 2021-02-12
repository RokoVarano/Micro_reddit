class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    params.permit!
    @user = User.find(params[:user_id])
    @post = @user.posts.create(params[:post])
    redirect_to user_path(@user)
  end
end
