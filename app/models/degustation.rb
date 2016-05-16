class Degustation < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :product, dependent: :destroy
  
end
