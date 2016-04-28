class Region < ActiveRecord::Base

  belongs_to :appellation, dependent: :destroy

  has_one :area

end
