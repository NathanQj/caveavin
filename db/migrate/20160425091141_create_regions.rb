class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.belongs_to :appellation, index: true

      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
