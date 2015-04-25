def ThreeFiveMultiples(num)
	multiples = [0]
	(3...num).each { |x| multiples << x if x % 3 == 0 || x % 5 == 0	}
	multiples.inject(:+)
end