class Area < ActiveRecord::Base

  belongs_to :region, dependent: :destroy
  
end
