class Night < ActiveRecord::Base
  has_one :game
    
  validates_presence_of :when
end
