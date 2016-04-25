class Vintage < ActiveRecord::Base

  belongs_to :product, dependent: :destroy

  has_many :ratings

end
