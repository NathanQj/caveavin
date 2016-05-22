class UserProductPolicy < ApplicationPolicy

  def index?
    logged?
  end

  def new?
    logged?
  end

  def create?
    logged?
  end

  def edit?
    @user.owns? @record
  end

  def update?
    @user.owns? @record
  end
end
