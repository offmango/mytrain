class CalendarDate < ActiveRecord::Base
	belongs_to :service

	# Exceptions for the service IDs defined in the calendar.txt file. 
	# If calendar_dates.txt includes ALL dates of service, 
	# this file may be specified instead of calendar.txt.

end
