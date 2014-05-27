class SessionsController < ApplicationController
  def index
    users = User.all
  end


  def new
  end

  def create
  	user = User.authenticate(params[:email], params[:password])
  	if user
  		session[:user_id] = user.id
  		redirect_to edit_user_profile_path, notice: "Logged In!"
  	else
  		flash.now.alert = "Invalid email or password!"
  		render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, notice: "Logged Out!"
  end
end
