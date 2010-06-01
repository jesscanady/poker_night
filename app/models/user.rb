require 'digest/md5'

class User < ActiveRecord::Base
  has_many :games
  
  
  validates_length_of :password, :minimum => 3
  validates_presence_of :email, :password, :password_confirmation
  validates_uniqueness_of :email
  validates_confirmation_of :password
  
  attr_protected :id
  attr_accessor :password, :password_confirmation
  
  
  def password=(newpass)
    @password = newpass
    self.hashed_password = User.encrypt(newpass)
  end
  
  
  def self.authenticate(email, pass)
    find_by_email_and_hashed_password(email, encrypt(pass))
  end
  
  def self.encrypt(string)
    # For this project, I'm okay with sufficient-but-weak security
    # real projects use salted md5
    # realer projects use salted SHA256
    # realest projects use bcrypt
    Digest::MD5.hexdigest(string)
  end
  
  
  
  # ranking 
  
  def won_games
    games(:conditions => ['place = ?', 1])
  end
  
end
