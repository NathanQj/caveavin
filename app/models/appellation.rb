class Appellation < ActiveRecord::Base

  belongs_to :product, dependent: :destroy

  has_one :region

end
