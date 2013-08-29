class Stop < ActiveRecord::Base
	has_many :trips, through :stop_times
end
