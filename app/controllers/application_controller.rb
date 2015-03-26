class ApplicationController < ActionController::Base
  protect_from_forgery

  if Rails.env.development?
    unless Rails.application.config.consider_all_requests_local
  rescue_from Exception, with: :render_404
  rescue_from ActionController::RoutingError, with: :render_404
  rescue_from ActionController::UnknownController, with: :render_404
  rescue_from ::AbstractController::ActionNotFound, with: :render_404
  rescue_from ActiveRecord::RecordNotFound, with: :render_404
  end
  end

  private
  def render_404(exception)
    @not_found_path = exception.message
    respond_to do |format|
      format.html { render template: 'errors/not_found', layout: 'layouts/application', status: 404 }
      format.all { render nothing: true, status: 404 }
    end
  end

  def render_500(exception)
    logger.info exception.backtrace.join("\n")
    respond_to do |format|
      #format.html { render template: 'errors/internal_server_error', layout: 'layouts/application', status: 500 }
      format.html { render :text => 'oh 出错了'}
      format.all { render nothing: true, status: 500}
    end
  end
end
