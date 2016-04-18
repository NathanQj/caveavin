class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # Ensures all actions invoke this (except those just below)
  before_filer :authenticate_user!
end
