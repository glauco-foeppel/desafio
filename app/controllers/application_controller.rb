class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
      # Utilizado para adicionar campos ao cadastro de usuarios via devise
      def configure_permitted_parameters
          devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password) }
          devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password) }
      end

  private

  def after_sign_out_path_for(resource_or_scope)
    if request.path == "/admins/sign_out"
      admin_users_path
    else
      root_path
    end
  end

end
