class ApplicationController < ActionController::API
  before_action :authenticate_user!
  before_action :update_allowed_parameters, if: :devise_controller?

  #   respond_to :json

  private

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
  end
end
