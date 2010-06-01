require 'spec_helper'

describe User do

  context "Authentication" do 
    before(:each) do 
      @user = Factory(:user, :email => 'hook@neverland.org')
    end
    
    it "should authenticate when given the proper credentials" do
      User.authenticate('hook@neverland.org', 'IH8PeterPan').should == @user
    end
    
    it "should not authenticate when given wrong credentials" do
      User.authenticate('hook@neverland.org', 'wrongpass').should == nil
    end
  end
  
  # context "Rankings" do
  #   before(:each) do
  #     @user = Factory(:user)
  #     # won this game, first place
  #     @user.games << Factory(:game, :buyin => 10, :winnings => 8, :place => 1)
  #     # lost this game, last place
  #     @user.games << Factory(:game, :buyin => 10, :winnings => 0, :place => 5)
  #     # placed second this game
  #     @user.games << Factory(:game, :buyin => 10, :winnings => 2, :place => 2)
  #   end
  #   
  #   it "should track the number of games played" do
  #     @user.games.count.should == 3
  #   end
  #   
  #   it "should track the number of won games" do 
  #     @user.won_games.count.should == 1
  #   end
  # 
  # 
  # end

end
