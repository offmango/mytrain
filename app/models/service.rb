class Service < ActiveRecord::Base
	has_many :calendars
	has_many :calendar_dates
	has_many :trips
end
