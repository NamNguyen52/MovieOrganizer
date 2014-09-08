class UsersController < ApplicationController

  def index
  end

  def all
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(params.require(:user).permit(:username, :password))
  	if @user.save
  		redirect_to users_path
  	else
  		render 'new'
  	end
  end

  def login
  
  end

end
