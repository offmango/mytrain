route has_many trips
trip has_many stops through stop_times ?	
agency has_many routes

Save times as integers: minutes from midnight.  Convert on import.
ActiveSupport time.seconds_since_midnight method

Rake tasks for data imports

COPY stops (id, stop_code, stop_name, stop_desc, stop_lat, stop_lon, zone_id, stop_url, parent_station, location_type, wheelchair_accessible) FROM '/Users/eric/Desktop/stops.csv' DELIMITER ',' CSV;