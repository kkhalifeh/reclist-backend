class CreatePlaceCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :place_categories do |t|
      t.references :place, foreign_key: true
      t.references :category, foreign_key: true
      t.references :list, foreign_key: true
      t.text :note

      t.timestamps
    end
  end
end
