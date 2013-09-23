class Trip < ActiveRecord::Base
	belongs_to :route
	has_many :stop_times
	has_many :stops, through: :stop_times

	# A trip is a sequence of two or more stops that occurs at specific time.
end
