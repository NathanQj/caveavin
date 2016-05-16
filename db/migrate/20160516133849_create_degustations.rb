class CreateDegustations < ActiveRecord::Migration
  def change
    create_table :degustations do |t|
      t.belongs_to        :user,    index: true
      t.belongs_to        :product, index: true

      t.string           :description
      t.integer          :rating

      t.timestamps null: false
    end
  end
end
