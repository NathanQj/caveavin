class WineType < ActiveRecord::Base

  belongs_to :varietal, dependent: :destroy

end
