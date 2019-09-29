class CreateLists < ActiveRecord::Migration[6.0]
  def change
    create_table :lists do |t|
      t.integer :author_id
      t.references :location, foreign_key: true
      t.integer :pins

      t.timestamps
    end
  end
end
