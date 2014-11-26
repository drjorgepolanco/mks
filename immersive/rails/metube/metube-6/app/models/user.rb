class User < ActiveRecord::Base
	has_many :videos

	validates :first_name, :last_name, presence: true
	validates :email_address, presence: true, uniqueness: true
end
