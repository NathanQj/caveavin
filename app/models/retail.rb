class Retail < ActiveRecord::Base

  belongs_to :products, dependent: :destroy

end
