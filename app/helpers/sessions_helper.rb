module SessionsHelper

	def log_in(user)
		cookies.permanent[:logged_in_id] = user.id 
		@current_user = user
	end

	def log_out
		cookies.delete(:logged_in_id)
	end

	def logged_in?
		cookies[:logged_in_id] ? true : false
	end

	def current_user
		if logged_in?
			@current_user ||= User.find(cookies[:logged_in_id])
		else
			nil
		end
	end

	def current_user=(user)
		@current_user = user
	end

	def show
	end
end
