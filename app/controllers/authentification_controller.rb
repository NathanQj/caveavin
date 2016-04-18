
class ApplicationController < ActionController::Base
  # Ensures all actions invoke this (except those just below)
  before_filter :authenticate_user!
end

class AuthenticationController < ApplicationController
  # Turn off user authentication for all actions in this controller
  skip_before_filter :authenticate_user!

  def login
    '...'
  end

  def register
    '...'
  end
end
