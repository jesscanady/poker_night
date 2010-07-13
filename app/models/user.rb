require 'digest/md5'

class User < ActiveRecord::Base
  has_many :records
  has_many :games, :through => :records
  has_many :won_games, :through => :records, :source => :game, :class_name => 'Game', :conditions => ['place = ?', 1]
  
  
  validates_length_of :password, :minimum => 3
  validates_presence_of :email, :password, :password_confirmation
  validates_uniqueness_of :email
  validates_confirmation_of :password
  
  attr_protected :id, :admin, :remember_token, :hashed_password
  attr_accessor :password, :password_confirmation

  before_create :generate_remember_token
  
  def password=(newpass)
    @password = newpass
    self.hashed_password = User.encrypt(newpass)
  end
  
  
  def self.authenticate_as_admin(email, pass)
    find_by_email_and_hashed_password(email, encrypt(pass), :conditions => {:admin => true})
  end
  
  def self.encrypt(string)
    # For this project, I'm okay with sufficient-but-weak security
    # real projects use salted md5
    # realer projects use salted SHA256
    # realest projects use bcrypt
    Digest::MD5.hexdigest(string)
  end


  def generate_remember_token
    self.remember_token = User.encrypt("--#{Time.now.utc}--#{hashed_password}--#{id}--#{rand}--")
  end
  
  
  
  # ranking 
  
  # def won_games
  #   records(:conditions => ['place = ?', 1])
  # end
  # 
end
