class Degustations::Creator

  def initialize(user, degustation_params)
    @user = user
    @degustation = build_degustation(user, degustation_params)
  end

  def self.create(user, degustation_params)
    new(user, degustation_params).create
  end

  def create
    if @degustation.save
      Response.new(:success, {degustation: @degustation})
    else
      Response.new(:fail, {degustation: @degustation})
    end
  end

private

  def build_degustation(user, degustation_params)
    degustation = Degustation.new(degustation_params)
    degustation.user = user
    return degustation
  end

end
