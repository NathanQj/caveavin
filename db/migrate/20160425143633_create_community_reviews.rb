class CreateCommunityReviews < ActiveRecord::Migration
  def change
    create_table :community_reviews do |t|
      t.belongs_to :community, index: true

      t.string :name
      t.string :url

      t.text :description

      t.integer :score
      
      t.timestamps null: false
    end
  end
end
