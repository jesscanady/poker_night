class Admin::UsersController < ApplicationController

  before_filter :require_admin
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    
    # We're avoiding validation here because the User model right now
    # expects users to be full-fledged users with passwords and all.
    # That's not the case right now, but may be in the future.
    if (@user.save(false))
      flash[:notice] = 'Successfully created user.'
      redirect_to admin_users_path
    else
      render :action => 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    
    # We're avoiding validation here because the User model right now
    # expects users to be full-fledged users with passwords and all.
    # That's not the case right now, but may be in the future.
    @user.attributes = params[:user]
    if @user.save(false)
      flash[:notice] = 'Successfully updated user.'
      redirect_to admin_users_path
    else
      render :action => 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'User has been deleted.'
    redirect_to admin_users_path
  end

end
