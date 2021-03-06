class User < ActiveRecord::Base
	has_many :videos
	before_save { self.email_address = email_address.downcase }
	validates :first_name, :last_name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email_address, presence: true, length: { maximum: 255 },
														format: { with: VALID_EMAIL_REGEX },
														uniqueness: { case_sensitive: false }
	has_secure_password
	validates :password, length: { minimum: 8 }
end
