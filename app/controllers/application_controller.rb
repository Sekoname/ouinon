class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email,:password])
  end
    
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email,:password,:password_confirmation,:login])
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:email,:password,:password_confirmation,:nom,:prenom,:dat_naiss,:login])
  end
  
end
