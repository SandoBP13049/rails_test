class UsersController < ApplicationController
  def index
  end

  def show
	#@user = User.find_by(:username => params[:username])
  if params[:username] == 'mafu'
    @user = User.find_by(:username => 'mafu')
  elsif params[:username] == 'gundam'
    @user = User.find_by(:username => 'gundam')
  end
  end
end
