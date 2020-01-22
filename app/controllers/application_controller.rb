class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def favorite_text
    return @favorite_text ? '<i class="far fa-heart"></i>' : '<i class="fas fa-heart"></i>'
  end

  helper_method :favorite_text
end
