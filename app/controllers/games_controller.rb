class GamesController < ApplicationController
  
  def index
    @upcoming_game = Game.upcoming
    @previous_games = Game.all(:limit => 10, :order => 'scheduled_for DESC')
  end
  
end
