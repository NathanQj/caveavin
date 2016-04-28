class CreateVarietals < ActiveRecord::Migration
  def change
    create_table :varietals do |t|
      t.belongs_to :product, index: true

      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
