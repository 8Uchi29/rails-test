class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by( email: params[:session][:email] )
    if not user.nil? and user.authenticate(params[:session][:password])
      # => user
      log_in user
      redirect_to user
    else
      # => false
      flash.now[:denger] = 'Invalid email/password combination.'
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
end
