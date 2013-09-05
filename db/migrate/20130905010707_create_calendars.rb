class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer :service_id
      t.binary :monday
      t.binary :tuesday
      t.binary :wednesday
      t.binary :thursday
      t.binary :friday
      t.binary :saturday
      t.binary :sunday
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
