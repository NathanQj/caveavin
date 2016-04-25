class Product < ActiveRecord::Base

  has_one :appellation
  has_one :varietal
  has_one :vineyard
  has_many :product_attributes
  has_many :labels
  has_many :ratings
  has_one :retail
  has_many :vintages
  has_one :community

end
