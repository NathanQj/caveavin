class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.belongs_to :product, index: true

      t.string :url

      t.integer :highest_score

      t.timestamps null: false
    end
  end
end
