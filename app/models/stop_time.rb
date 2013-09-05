class StopTime < ActiveRecord::Base
	belongs_to :trip
	belongs_to :stop

	# Times that a vehicle arrives at and departs from individual stops for each trip.
	
end
