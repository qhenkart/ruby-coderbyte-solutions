def ArrayAddition(arr)
	largest = arr.sort!.pop
	(2..arr.length).each do |x|
		arr.combination(x) {|combination| return true if combination.inject(:+) == largest}
	end
	false
end