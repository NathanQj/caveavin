class Response
  attr_reader :vars, :status

  def initialize(status=nil, vars={})
    @status = status
    @vars = vars
  end

  def status=(status)
    @status = status if [:success, :fail].include? status
  end

  def ok?
    @status == :success
  end

end
