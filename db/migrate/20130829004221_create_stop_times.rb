class CreateStopTimes < ActiveRecord::Migration
  def change
    create_table :stop_times do |t|
      t.integer :route_id
      t.integer :service_id
      t.integer :trip_id
      t.string  :trip_headsign
      t.integer :trip_short_name
      t.integer :direction_id
      t.integer :block_id
      t.integer :shape_id
      t.integer :wheelchair_boarding       

      t.timestamps
    end
  end
end