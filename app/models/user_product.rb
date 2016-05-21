class UserProduct < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :product, dependent: :destroy

  validates :stock, numericality: { greater_than_or_equal_to: 0 }

end
