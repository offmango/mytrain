route has_many trips
trip has_many stops through stop_times ?	
agency has_many routes

SERVICE
trip belongs to service
calendar belongs to service
calendar_date belongs to service

"The service_id contains an ID that uniquely identifies a set of dates when service is available for one or more routes."

Save times as integers: minutes from midnight.  Convert on import.
ActiveSupport time.seconds_since_midnight method

Rake tasks for data imports

COPY stops (id, stop_code, stop_name, stop_desc, stop_lat, stop_lon, zone_id, stop_url, parent_station, location_type, wheelchair_accessible) FROM '/Users/eric/Desktop/stops.csv' DELIMITER ',' CSV;

GTFS info: https://developers.google.com/transit/gtfs/reference?csw=1