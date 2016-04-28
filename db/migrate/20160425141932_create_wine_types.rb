class CreateWineTypes < ActiveRecord::Migration
  def change
    create_table :wine_types do |t|
      t.belongs_to :varietal, index: true

      t.string :name
      t.string :url

      t.timestamps null: false
    end
  end
end
