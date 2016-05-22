class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  def index
    @products = Product.all
  end

  def show
    @degustations = @product.degustations
  end

  def new
    @product = Product.new
    authorize @product
  end

  def create
      authorize :product, :create?

      @res = Products::Creator.create(current_user, product_params)

      if @res.ok?
        user_product = UserProduct.new(user_product_params)
        user_product.user = current_user
        user_product.product = @res.vars[:product]

        if degustation_params.present?
          degustation = Degustation.new(degustation_params)
          degustation.user = current_user
          degustation.product = @res.vars[:product]
          degustation.save
        end

        if user_product.save
          redirect_to product_path(@res.vars[:product]), notice: "Produit créé !"
        end
      else
        render :new
      end
    end

    private

    def set_product
      @product = Product.find params[:id]
    end

    def product_params
      params.require(:product)
            .permit(:name,
                    :year,
                    :description,
                    :price_min,
                    :price_max,
                    :price_retail)
    end

    def user_product_params
      params.require(:product)
            .require(:user_product)
            .permit(:stock)
    end

    def degustation_params
      params.require(:product)
            .require(:degustation)
            .permit(:description,
                    :rating)
    end
end
