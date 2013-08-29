class Trip < ActiveRecord::Base
	has_many :stops, through :stop_times
end
