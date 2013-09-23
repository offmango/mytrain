class Route < ActiveRecord::Base
	has_many :trips
	has_many :route_stops
	has_many :stops, through: :route_stops

	# A route is a group of trips that are displayed to riders as a single service.
end
