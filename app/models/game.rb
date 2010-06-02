class Game < ActiveRecord::Base
  has_many :records
  has_many :users, :through => :records
    
  validates_presence_of :scheduled_for
end
