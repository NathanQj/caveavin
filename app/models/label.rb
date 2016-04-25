class Label < ActiveRecord::Base

  belongs_to :product, dependent: :destroy

end
