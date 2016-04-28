class Community < ActiveRecord::Base

  belongs_to :product, dependent: :destroy

  has_many :community_reviews
  
end
