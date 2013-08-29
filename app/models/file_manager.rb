class FileManager

	require "csv"

	def create_converted_stop_times_csv
		st_array = get_stop_times_array
		converted_st_array = convert_stop_times_to_minutes_since_midnight(st_array)
	end

	def get_stop_times_array
		stop_times_file = File.open("/Users/eric/Desktop/stop_times.csv")
		stop_times_array = []
		stop_times_file.each { |ln| stop_times_array << CSV.parse_line(ln) }
	end

	def convert_stop_times_to_minutes_since_midnight(stop_times_array)
		stop_times_array.each do |stop_time|
			stop_time[1] = convert_time_to_msm(stop_time[1])
			stop_time[2] = convert_time_to_msm(stop_time[2])
		end
		stop_times_array
	end

	private

	def convert_to_msm(time_string)
		seconds_since_midnight = time_string.to_time.seconds_since_midnight
		seconds_since_midnight / 60
	end

end
