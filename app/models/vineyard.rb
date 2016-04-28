class Vineyard < ActiveRecord::Base

  belongs_to :product, dependent: :destroy

  has_one :geo_location
  
end
