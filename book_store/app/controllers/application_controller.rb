# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  def logged_in?
    session[:current_user_id] > 0
  end
  
  def current_user
    current_user = User.find(session[:current_user_id]).username
  end
end
