class UserProductsController < ApplicationController
  before_action :set_user_product, only: [:show, :edit, :update]

  def index
    @user_products = current_user.user_products
  end

  def show
  end

  def new
    @user_product = UserProduct.new
    authorize @user_product
  end

  def create
    authorize :user_product, :create?

    @res = UserProducts::Creator.create(current_user, user_product_params)

    if @res.ok?
      if degustation_params.present?
        degustation = Degustation.new(degustation_params)
        degustation.user = current_user
        degustation.product = @res.vars[:product]
        degustation.save
      end

      if user_product.save
        redirect_to product_path(@res.vars[:product]), notice: "Bouteille(s) ajoutée(s) à votre cave"
      end
    else
      render :new
    end
  end

  def edit
    authorize @user_product
  end

  def update
    authorize @user_product

    @res = UserProducts::Updator.update(@user_product, user_product_params)
    if @res.ok?
      redirect_to root_path, notice: "Cave mise à jour !"
    else
      render :edit
    end
  end

  private

  def set_user_product
    @user_product = UserProduct.find params[:id]
  end

  def user_product_params
    params.require(:user_product)
          .permit(:product_id,
                  :stock)
  end

  def degustation_params
    params.require(:product)
          .require(:degustation)
          .permit(:description,
                  :rating)
  end
end
