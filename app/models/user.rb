class User < ActiveRecord::Base
  attr_accessible :email, :password_hash, :password_salt

  attr_accessor :password_hash
  before_save :encrypt_password

  validates_confirmation_of :password_hash
  validates_presence_of :password_hash, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.authenticate(email, password_hash)
  	user = find_by_email(email)
  	if user && user.password_hash == BCrypt::Engine.hash_secret(password_hash, password_salt)
  		user
  	else
  		nil
  	end
  end

 def encrypt_password
 	if password_hash.present?
 		self.password_salt = BCrypt::Engine.generate_salt
 		self.password_hash = BCrypt::Engine.hash_secret(password_hash, password_salt)
 	end
 end
end
