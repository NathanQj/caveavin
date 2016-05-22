class DegustationsController < ApplicationController
  before_action :set_degustation, only: [:show, :edit, :update]

  def index
    @degustations = current_user.degustations
  end

  def show
  end

  def new
    @degustation = Degustation.new
    authorize @degustation
  end

  def create
    authorize :degustation, :create?

    @res = Degustations::Creator.create(current_user, degustation_params)

    if @res.ok?
      redirect_to degustation_path(@res.vars[:degustation]), notice: "Dégustation créée !"
    else
      render :new
    end
  end

  def edit
    authorize @degustation
  end

  def update
    authorize @degustation

    @res = Degustations::Updator.update(@degustation, degustation_params)
    if @res.ok?
      redirect_to root_path, notice: "Dégustation mise à jour !"
    else
      render :edit
    end
  end

  private

  def set_degustation
    @degustation = Degustation.find params[:id]
  end

  def degustation_params
    params.require(:degustation)
          .permit(:description,
                  :rating,
                  :product_id)
  end
end
