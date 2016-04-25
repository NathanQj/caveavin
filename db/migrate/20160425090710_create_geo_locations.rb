class CreateGeolocations < ActiveRecord::Migration
  def change
    create_table :geo_locations do |t|
      t.belongs_to :product, index: true

      t.string :url

      t.integer :latitude
      t.integer :longitude

      t.timestamps null: false
    end
  end
end
