class UsersController < ApplicationController

  def home
  end

  def index
    @users = User.all
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.create(params.require(:user).permit(:name, :username, :password))
  	if @user.save
  		redirect_to show_user_path
  	else
  		render 'new'
  	end
  end

  def login
    @users = User.all
  end

end
