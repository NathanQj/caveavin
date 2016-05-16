class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  # Ensures all actions invoke this (except those just below)
  before_filter :authenticate_user!

  private

  def user_not_authorized
    flash[:alert] = "Vous ne pouvez pas voir cette page."
    redirect_to(request.referrer || root_path)
  end
end
