class FileManager

	require "csv"

	def self.create_converted_stop_times_csv
		st_array = self.get_stop_times_array
		converted_st_array = convert_stop_times_to_minutes_since_midnight(st_array)
		# write the converted array to a file
		new_st_csv = File.new("/Users/eric/Desktop/converted_stop_times.csv", "w")
		CSV.open(new_st_csv, "wb") do |csv|
			converted_st_array.each { |arr| csv << arr }
		end
		puts "File conversion done!"
	end

	private

	def self.get_stop_times_array
		stop_times_file = File.open("/Users/eric/Desktop/stop_times.csv")
		stop_times_array = []
		stop_times_file.each { |ln| stop_times_array << CSV.parse_line(ln) }
		stop_times_array
	end

	def self.convert_stop_times_to_minutes_since_midnight(stop_times_array)
		stop_times_array.each do |stop_time|
			stop_time[1] = convert_time_to_msm(stop_time[1])
			stop_time[2] = convert_time_to_msm(stop_time[2])
		end
		stop_times_array
	end

	def self.convert_time_to_msm(time_string)
		#what if time is after midnight?
 		begin seconds_since_midnight = time_string.sub(/\A24/, '00').to_time.seconds_since_midnight rescue nil end
		(seconds_since_midnight / 60).to_i if seconds_since_midnight.present?
	end

end
