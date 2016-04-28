class Rating < ActiveRecord::Base

  belongs_to :product, dependent: :destroy

end
