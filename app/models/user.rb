class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_products
  has_many :degustations

  def owns?(model, key_field=nil)
    model_owner =
    if key_field.nil?
      model.try(:user)
    else
      model.try(key_field)
    end
    expected_owner = (key_field.nil? ? self : self.try(key_field))

    return false if (model_owner and expected_owner).nil?
    return model_owner === expected_owner
  end
end
