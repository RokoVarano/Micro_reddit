class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(name)
    if @user.save
      redirect_to @users
    else
      render :new
    end
  end
end
