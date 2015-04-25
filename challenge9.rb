def BinaryConverter(str)
	binary_map = {0 => 1}
	conv = [0]
	str.reverse.split('').each_with_index do |x, idx|
		if binary_map.has_key?(idx)
			conv << binary_map[idx] if x == '1'
		else
			binary_map[idx] = binary_map[idx-1] * 2
			conv << binary_map[idx] if x == '1'
		end
	end
	conv.inject(:+)
end