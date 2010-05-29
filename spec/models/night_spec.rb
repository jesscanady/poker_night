require 'spec_helper'

describe Night do
  before(:each) do
    @valid_attributes = {
      :when => Time.now,
      :active => ,
      :winner_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Night.create!(@valid_attributes)
  end
end
