class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def logged?
    @user.present?
  end

  def logged_as_admin?
  end

  def logged_as_freelancer?
  end

  def logged_as_employer?
  end

end
