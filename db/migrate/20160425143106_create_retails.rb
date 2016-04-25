class CreateRetails < ActiveRecord::Migration
  def change
    create_table :retails do |t|
      t.belongs_to :product, index: true

      t.string :sku
      t.string :url

      t.boolean :in_stock

      t.integer :price

      t.timestamps null: false
    end
  end
end
