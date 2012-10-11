class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    unless @user.save
      render 'new'
    end
  end

  def login
  end

  def edit
  end
end
