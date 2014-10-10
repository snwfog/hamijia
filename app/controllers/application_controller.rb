class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  respond_to :json

  rescue_from ActionController::RoutingError, with: :render_not_found_exception
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_exception
  rescue_from ActionController::ParameterMissing, with: :render_missing_params_exception

  def routing_error
    logger.info "Path #{params[:path]} is not a valid path."
    raise ActionController::RoutingError.new(params[:path])
  end

  protected

  def render_not_found_exception
    render nothing: true, status: :not_found
  end

  def render_missing_params_exception(exception)
    render json: exception, status: :bad_request
  end

  def default_serializer_options
    {
        root: false
    }
  end
end
