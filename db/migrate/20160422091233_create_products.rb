class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string        :name
      t.string        :type
      t.string        :year
      t.string        :url

      t.text          :description

      t.integer       :price_min
      t.integer       :price_max
      t.integer       :price_retail

      t.timestamps                                            null: false
    end
  end
end
