class SessionsController < ApplicationController
  include SessionsHelper
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to products_url(@product)

    else
      flash.now[:danger]= "Invalid password or name"
      render 'new'

    end

  end
  def destroy
  signout
    redirect_to root_url
  end
end
