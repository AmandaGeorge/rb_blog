class User < ActiveRecord::Base
	has_many :posts, dependent: :destroy
	has_secure_password

	validates :password, 
		presence: true,
		length: { minimum: 6 }

	validates :email,
		presence: true,
		uniqueness: true,

		format: {
			with: /@/,
			message: "Please enter a valid email"
		}


end
