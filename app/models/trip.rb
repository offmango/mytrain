class Trip < ActiveRecord::Base
	has_many :stop_times
	belongs_to :route
	has_many :stops, through: :stop_times
end
