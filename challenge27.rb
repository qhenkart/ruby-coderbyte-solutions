def MultipleBrackets(str)
	openpar = 0; clospar = 0
	openbrac = 0; closbrac = 0
	str.gsub!(/[^()\[\]]/, '')
	return -1 if str.empty?
	return 0 unless str.match(/\A[(]|\A[\[]/)
	str.each_char do |x|
		openpar += 1 if x == "("
		openbrac += 1 if x == "["

		clospar += 1 if x == ")"
		closbrac += 1 if x == "]"

		return 0 if openpar < clospar || openbrac < closbrac
	end
	openpar == clospar && openbrac == closbrac  ?   "#{1} #{openpar + openbrac}" : 0
end
