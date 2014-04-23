class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.authenticate(params[:user], params[:password_hash])
  	if user && user.authenticate(params[:password_hash])
  		session[:user_id] = user.user_id
  		redirect_to root_url, :notice => "Logged In!"
  	else
  		flash.now.alert = "Invalid email or password!"
  		render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, :notice => "Logged Out!"
  end
end
