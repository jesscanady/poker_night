# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password


  
  private

  def require_admin
    redirect_to new_admin_session_path unless current_admin
  end

  def current_admin
    false unless session[:current_admin_token].nil?
    User.find_by_remember_token_and_admin(session[:current_admin_token], true)
  end

  def set_current_admin(user)
    case user
    when User: session[:current_admin_token] = user.remember_token
    when String, NilClass: session[:current_admin_token] = user
    else raise ArgumentError.new("set_current_admin takes a User or a String, or nil. You gave a #{user.class}.")
    end
  end

 
end
