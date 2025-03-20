class ErrorsController < ApplicationController

  def not_found
    render template: "errors/not_found", status: :not_found
  end

  def internal_server_error
    render template: "errors/internal_server_error", status: :internal_server_error
  end
end
