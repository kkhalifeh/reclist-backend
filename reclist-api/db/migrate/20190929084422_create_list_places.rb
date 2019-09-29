class CreateListPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :list_places do |t|
      t.references :list, foreign_key: true
      t.references :place, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end
