class SessionsController < ApplicationController

	def new
		flash.clear
	end

	def create
		flash.clear

		begin
			user = User.find_by({username: params[:session][:username]})
		rescue
			flash[:error] = "Please try again!"
		end

		if user && user.authenticate(params[:session][:password])
			log_in(user)
			redirect_to show_user_path
		else
			flash[:error] ||= "Pleas try again!"
			render 'new'
		end

	end

	def destroy
		log_out
		redirect_to home_path
	end
end