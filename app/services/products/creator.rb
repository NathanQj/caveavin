class Products::Creator

  def initialize(user, product_params)
    @user = user
    @product = build_product(product_params)
  end

  def self.create(user, product_params)
    new(user, product_params).create
  end

  def create
    if @product.save
      Response.new(:success, {product: @product})
    else
      Response.new(:fail, {product: @product})
    end
  end

private

  def build_product(product_params)
    product = Product.new(product_params)

    return product
  end

end
