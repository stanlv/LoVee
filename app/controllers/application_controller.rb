class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :redirect_to_gender

  def after_sign_in_path_for(user)
    user.gender.nil? ? gender_path : play_path
  end

  def redirect_to_gender
    (redirect_to gender_path and return false) if user_signed_in? && current_user.gender.nil? && !(request.url.include?("gender")) && !(params[:user].nil?) && params[:user][:gender].nil?
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :partner_id, :gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:gender])
  end
end
