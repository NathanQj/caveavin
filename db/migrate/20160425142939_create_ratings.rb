class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.belongs_to :product, index: true

      t.string :name
      t.string :url

      t.integer :score

      t.timestamps null: false
    end
  end
end
