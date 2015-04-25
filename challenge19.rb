def SwapII(str)
	str.swapcase!
	str.split.map do |x|
		nums= x.scan(/\d+/)
		if nums.length == 2
			x.gsub!(/(\d)(\w+)(\d)/, '\3\2\1')
		end
		x
	end.join(' ')
end
