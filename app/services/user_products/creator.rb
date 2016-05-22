class UserProducts::Creator

  def initialize(user, user_product_params)
    @user = user
    @user_product = build_user_product(user, user_product_params)
  end

  def self.create(user, user_product_params)
    new(user, user_product_params).create
  end

  def create
    if @user_product.save
      Response.new(:success, {user_product: @user_product})
    else
      Response.new(:fail, {user_product: @user_product})
    end
  end

private

  def build_user_product(user, user_product_params)
    user_product = UserProduct.new(user_product_params)
    user_product.user = user
    return user_product
  end

end
