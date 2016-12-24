class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.text :chain
      t.text :name
      t.float :latitude
      t.float :longitude
      t.text :address
      t.text :city
      t.integer :zip
      t.integer :phone
      t.text :country_code
      t.timestamps
    end
  end
end
