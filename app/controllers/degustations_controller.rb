class DegustationsController < ApplicationController

  def index
    @degustations = current_user.degustations
  end
end
