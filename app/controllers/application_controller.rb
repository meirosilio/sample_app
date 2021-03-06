class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper



  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  # Confirms the correct user.
  def correct_user
    if logged_in?
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user==current_user
    end
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end
