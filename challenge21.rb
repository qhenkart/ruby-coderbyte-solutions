def TripleDouble(num1,num2)
	triple = Regexp.last_match(0) if num1.to_s.match(/(\d)\1\1/)
	return 0 if triple == nil
	double = Regexp.last_match(0) if num2.to_s.match(triple[0,2])
	return 0 if double == nil
	1
end

#I'm very proud of this one! It's so clean!