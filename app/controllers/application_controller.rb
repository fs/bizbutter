class ApplicationController < ActionController::Base
  include Clearance::Authentication
  helper :all
  protect_from_forgery
  
  def require_user
    redirect_to root_path unless signed_in?
  end
end
