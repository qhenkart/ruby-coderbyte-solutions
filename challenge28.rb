#sorry for the mess
def MostFreeTime(arr)
	arr = sorter(arr)
	time = 0
	breaks = []
	(arr.length-1).times { |x| breaks << TimeRecreator(arr[x], arr[x+1]) }
	
	breaks.each { |x| time = CountingMinutes(x) if CountingMinutes(x) > time }

	if time > 59
		hours = time / 60
		minutes = time % 60
		"#{padded(hours)}:#{padded(minutes)}"
	else
		"00:#{padded(time)}"
	end
end

#properly formats the time
def padded(num)
	if num <= 0
		"00" 
	elsif  num < 10
		"0" + num.to_s
	else 
		num.to_s
	end
end

#recreates the array to show the range of time between the breaks, thus preparing it for the CountingMinutes method
def TimeRecreator(time1, time2)
	time1 = time1.split("-").pop + "-"
	time1 += time2.split("-").shift
end

# sorts the array without changing the format of the time. In retrospect, I should have just rewritten the Counting Minutes array
# to handle an array of times and sort them after they are converted to 24 hour time. This method was a pain, as .sort
# worked very unreliably with the given string format
def sorter(arr)
	ams = []
	pms = []
	specam = ""
	specpm = ""
	arr.each do |x|	
		if  (x.split('-').first.include?("AM") && !(x.split('-').first.split(":").first.include?("12")))
			ams << x
		elsif x.split('-').first.include?("PM") && !(x.split('-').first.split(":").first.include?("12"))
			pms <<x
		elsif x.split('-').first.include?("AM") && x.split('-').first.split(":").first.include?("12")
			specam = x
		else
			specpm = x
		end
	end

	specpm.empty? ?  newtime = ams.sort! + pms.sort! : newtime = ((ams.sort!) << specpm) + pms.sort!
	specam.empty? ?  newtime : newtime.unshift(specam)
end

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