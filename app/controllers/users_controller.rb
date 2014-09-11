class UsersController < ApplicationController

  def home
  end

  def index
    @users = User.all
  end

  def show
  	@user = User.find(params[:user_id])
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
    @users = User.all
  end

end
