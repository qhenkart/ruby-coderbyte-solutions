def Consecutive(arr)
	count=0
	((arr.min)..(arr.max)).each do |x|
		count += 1 unless arr.include?(x)
	end
	count
end