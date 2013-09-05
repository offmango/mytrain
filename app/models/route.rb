class Route < ActiveRecord::Base
	has_many :trips

	# A route is a group of trips that are displayed to riders as a single service.
end
