class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :store_current_location, :unless => :devise_controller?
  
  protected
  def authenticate_user!(options={})
    if user_signed_in?
      super(options)
    else
      redirect_to login_path
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
  
  private
  def store_current_location
    store_location_for(:user, request.url)
  end

  private
  def after_sign_in_path_for(resource)
	stored_location_for(:user) || root_path
  end
  
  private
  def ensure_directeur!
    unless current_user.role_id == 0
     sign_out current_user
     return false
    end
  end
  private
  def ensure_coordonnateur!
    unless current_user.role_id == 1
     sign_out current_user
     return false
    end
  end
  private
  def ensure_intervenant!
    unless current_user.role_id == 2
     sign_out current_user
     return false
    end
  end
end
