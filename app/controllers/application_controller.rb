class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  force_ssl if: :ssl_configured?

  def authenticate_user!
    if !user_signed_in?
      render status: :unauthorized, text: 'Unauthorized. Please sign in.'
    elsif current_user && !current_user.approved?
      render status: :unauthorized, text: 'You account must be approved to modify contents on the site. Please contact hello@kek.org.in'
    end
  end

  private

  def ssl_configured?
    !Rails.env.development?
  end
end
