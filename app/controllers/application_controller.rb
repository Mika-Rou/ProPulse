class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_render_visibility
  before_action :set_layout

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
  end

  def default_url_options
    { host: ENV['DOMAIN'] || 'localhost:3000' }
  end

  private

  def set_render_visibility

    @show_render = !((controller_name == "questions" && action_name == "show") ||
                                              (controller_name == "errors" && action_name == "not_found")
                                              (controller_name == "errors" && action_name == "internal_server_error"))
  end

  def set_layout
  end
end
