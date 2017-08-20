class User < ApplicationRecord

	has_secure_password

	has_one :account
	has_many :todolists
	has_many :todoitems

end
