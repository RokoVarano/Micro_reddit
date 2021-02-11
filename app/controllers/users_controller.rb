class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(name: "")
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end
end
