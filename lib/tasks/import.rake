namespace :import do

	desc "import stop_times"
	task :import_stop_times => :environment do
	    ActiveRecord::Base.connection.execute "COPY stop_times (trip_id, arrival_time,departure_time, stop_id, stop_sequence, pickup_type, drop_off_type) FROM '/Users/eric/Desktop/stop_times.csv' DELIMITER ',' CSV;"
	end
end