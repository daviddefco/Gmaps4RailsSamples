class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
      t.string :street
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
