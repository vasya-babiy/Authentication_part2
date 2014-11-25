class ProfilesController < ApplicationController
  
  def show
    @profile = Profile.find(params[:user_id])
  end

  def new
    @profile = Profile.new(params[:user_id])
  end

  def edit
    @profile = User.find(params[:user_id])
  end

end
