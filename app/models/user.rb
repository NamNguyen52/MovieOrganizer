require 'bcrypt'

class User
  include Mongoid::Document
  field :username, type: String
  field :password_digest, type: String
  field :name, type: String
  
  has_many :usermovies  

attr_reader :password

def password=(new_password)
	self.password_digest = BCrypt::Password.create(new_password)
end

def authenticate(entered_password)
	if entered_password && BCrypt::Password.new(self.password_digest) == entered_password
		self
	else
		false
	end

end

end