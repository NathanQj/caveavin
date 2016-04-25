class CreateAppellations < ActiveRecord::Migration
  def change
    create_table :appellations do |t|
      t.belongs_to :product, index: true

      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
