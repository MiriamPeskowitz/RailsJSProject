class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def login_required
    if !logged_in?
      redirect_to login_path, :notice => "Please login."
    end
  end

  def logged_in?
    !!current_user
  end 

  def current_user 
  
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
     # find(session[:user_id) if session[:user_id])
  end 

  def authorize
    redirect_to login_path unless current_user
  end 
  # use this as a before_action filter. add flash-notice "something went wrong"

end
