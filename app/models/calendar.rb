class Calendar < ActiveRecord::Base
	belongs_to :service

	# Dates for service IDs using a weekly schedule. 
	# Specify when service starts and ends, 
	# as well as days of the week where service is available.

end
