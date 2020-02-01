class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :age, :last_name, :first_name, :last_name_kana, :first_name_kana, :birth_year, :birth_month, :birth_day])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :age, :last_name, :first_name, :last_name_kana, :first_name_kana, :birth_year, :birth_month, :birth_day])
  end

end
