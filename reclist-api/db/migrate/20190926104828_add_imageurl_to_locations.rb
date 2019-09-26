class AddImageurlToLocations < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :image, :string
  end
end
