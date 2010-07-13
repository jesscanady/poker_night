class Admin::SessionsController < ApplicationController

  def new
    # show login page
  end

  def create
    if user = User.authenticate_as_admin(params[:email], params[:password])
      set_current_admin(user)
      redirect_to admin_games_path
    else
      flash[:error] = "Negatory, skeletor."
      render :action => :new
    end
  end

  def destroy
    set_current_admin(nil)
  end
  
  
end

