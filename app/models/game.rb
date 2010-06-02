class Game < ActiveRecord::Base
  has_many :records
  has_many :players, :through => :records, :source => :user, :class_name => 'User', :foreign_key => :user_id do 
    def ranked
      all(:order => 'place ASC')
    end
  end
    
  validates_presence_of :scheduled_for
  
  named_scope :active, :conditions => {:active => true}
  
  def self.previous
    active.find(:first, :conditions => ['scheduled_for <= ?', Time.now])
  end
  
  def self.upcoming
    active.find(:first, :conditions => ['scheduled_for >= ?', Time.now])
  end
  
end
