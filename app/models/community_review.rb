class CommunityReview < ActiveRecord::Base

  belongs_to :community, dependent: :destroy
end
