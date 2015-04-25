def CountingMinutes(str)
	times = []
	str.split("-").map do |x|
		if x.include?('pm')
			x.to_i != 12 ?  times << x.to_i + 12 : times << x.to_i
			times << x.split(':').last.gsub(/[a-z]/, '')
		else
			x.to_i >= 12 ?  times << x.to_i - 12  :  times << x.to_i
			times << x.split(':').last.gsub(/[a-z]/, '')
		end
	end

	time1 = Time.utc(2000,1,1,times[0],times[1])

	if times[0] > times[2] || (times[0] == times[2] && times[1] > times[3])
		time2 = Time.utc(2000,1,2,times[2],times[3])
	else
		time2 = Time.utc(2000,1,1,times[2],times[3])
	end
	answer = ((time1 - time2) / 60).to_i
	answer.abs
end