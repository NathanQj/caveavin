class Degustations::Updator

  def initialize(degustation)
    @degustation = degustation
  end

  def self.update(degustation, degustation_params)
    new(degustation).update(degustation_params)
  end

  def update(degustation_params)
    @degustation.attributes = degustation_params
    if @degustation.save
      Response.new(:success, {degustation: @degustation})
    else
      Response.new(:fail, {degustation: @degustation})
    end
  end

end
