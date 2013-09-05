class Stop < ActiveRecord::Base
	has_many :stop_times
	has_many :trips, through: :stop_times

	# Individual locations where vehicles pick up or drop off passengers.
	
end
