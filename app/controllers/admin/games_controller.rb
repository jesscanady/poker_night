class Admin::GamesController < ApplicationController

  before_filter :require_admin
  layout 'admin'
  
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])
    if (@game.save)
      flash[:notice] = 'Successfully created game.'
      redirect_to admin_games_path
    else
      render :action => 'new'
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update_attributes(params[:game])
      flash[:notice] = 'Successfully updated game.'
      redirect_to admin_games_path
    else
      redirect_to edit_admin_game_path(@game)
    end
  end

  def destroy
    Game.find(params[:id]).destroy
    redirect_to admin_games_path
  end

end
