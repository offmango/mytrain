class CreateStopTimes < ActiveRecord::Migration
  def change
    create_table :stop_times do |t|
      t.integer :trip_id
      t.integer :arrival_time
      t.integer :departure_time
      t.integer :stop_id
      t.integer :stop_sequence
      t.integer :pickup_type
      t.integer :drop_off_type

      t.timestamps
    end
  end
end
