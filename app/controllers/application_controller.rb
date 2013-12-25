class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :detect_device_variant

  private

  def detect_device_variant
    case request.env['mobvious.device_type']
    when :desktop
      request.variant = :desktop
    when :tablet
      request.variant = :tablet
    when :mobile
      request.variant = :phone
    end
  end

end
