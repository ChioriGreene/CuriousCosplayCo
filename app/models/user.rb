class User < ActiveRecord::Base
	attr_accessor :password
	#attr_accessible :name, :email, :password, :password_configuration
	self.primary_key = "userId"
	
	has_many :posts, primary_key: "userId", foreign_key: "owner"

	email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
	
	validates :name, presence: true, length: {maximum: 50}
	validates :email, presence: true, format: {with: email_regex}, uniqueness: { case_sensitive: false }
	validates :password, presence: true, confirmation: true, length: {within: 6..40}
	
	before_save :encrypt_password
	
	def has_password(submitted_password)
		encrypted_password == encrypt(submitted_password)
	end
	
	def self.authenticate(email, submitted_password)
		user = find_by_email(email)	
		
		return nil if user.nil?
		return user if user.has_password(submitted_password)
	end
	
	private
		def encrypt_password
			self.salt = Digest::SHA2.hexdigest("#{Time.now.utc}--#{password}") if self.new_record?
			self.encrypted_password = encrypt(password)
		end
		
		def encrypt(pass)
			Digest::SHA2.hexdigest("#{self.salt}--#{pass}")
		end
end