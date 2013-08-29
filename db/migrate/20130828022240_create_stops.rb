class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :stop_code
      t.string :stop_name
      t.string :stop_desc
      t.decimal :stop_lat, precision: 7, scale: 4
      t.decimal :stop_lon, precision: 7, scale: 4
      t.integer :zone_id
      t.string :stop_url
      t.integer :parent_station 
      t.integer :location_type
      t.integer :wheelchair_accessible

      t.timestamps
    end
  end
end
