class Varietal < ActiveRecord::Base

  belongs_to :product, dependent: :destroy

  has_one :wine_type

end
