class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to Share Things"
    else
      render 'new'
    end
  end

  def login
  end

  def edit
  end
end
