class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.string :google_id
      t.string :name
      t.string :img_url

      t.timestamps
    end
  end
end
