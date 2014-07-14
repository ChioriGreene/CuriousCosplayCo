class SessionsController < ApplicationController
	layout "login"
  def login
  end
  
  def create
  	user = User.authenticate(params[:session][:email], params[:session][:password])
  	
  	if user.nil?
  		flash.now[:error] = "Invalid email/password configuration."
  		render :login
  	else
  		sign_in user
  		redirect_to user
  	end
  end
  
  def destroy
  	sign_out
  	redirect_to signin_path
  end
end
