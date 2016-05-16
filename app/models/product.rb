class Product < ActiveRecord::Base

  has_one :appellation
  has_one :varietal
  has_one :vineyard
  has_one :retail
  has_one :community

  has_many :product_attributes
  has_many :labels
  has_many :ratings
  has_many :vintages
  has_many :user_products
  has_many :degustations

end
