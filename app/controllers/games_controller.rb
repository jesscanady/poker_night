class GamesController < ApplicationController
  
  def index
    @upcoming_game = Game.upcoming
    @previous_game = Game.previous
  end
  
end
