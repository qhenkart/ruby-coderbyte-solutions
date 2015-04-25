def CaesarCipher(str, num)
	arr = []
	str.each_byte {|x| arr << x}
	arr.map do |x|
		if x.chr.match(/[A-Z]|[a-z]/)
			if x <= 90 && (x+num) > 90
				#revert back to capital 65
				(64 + ((x+num)-90)).chr
			elsif x <=122 && (x + num) > 122
				#revert back to lowercase 97
				(96 + ((x+num)-122)).chr
			else
				(x+num).chr
			end
		else
			x.chr
		end
	end.join
end