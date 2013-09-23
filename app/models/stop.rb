class Stop < ActiveRecord::Base
	has_many :stop_times
	has_many :route_stops
	has_many :trips, through: :stop_times
	has_many :routes, through: :route_stops

	# Individual locations where vehicles pick up or drop off passengers.

end
