class GamesController < ApplicationController
  
  def index
    @upcoming_game = Game.upcoming
    
    # the last game played, and the previous 10
    @previous_game_list = Game.active.previous(:limit => 11)
    @previous_game = @previous_game_list.shift
  end
  
end
