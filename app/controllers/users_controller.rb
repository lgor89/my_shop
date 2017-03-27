class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to root_path
  end
end
