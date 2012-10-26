class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      TheMail.welcome(@user).deliver
      flash[:success] = "Welcome to Share Things"
      redirect_to '/items/index'
    else
      render 'new'
    end
  end

  def edit
  end
end
