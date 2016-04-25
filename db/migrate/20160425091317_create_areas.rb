class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|

      belongs_to :region, index: true

      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
