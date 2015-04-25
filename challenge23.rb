def StringReduction(str)
	timer=str.length
	while timer == str.length
		str.sub!(/bc|cb/, 'a')
		str.sub!(/ac|ca/, 'b')
		str.sub!(/ab|ba/, 'c')
		timer != str.length ? timer = str.length : break
	end
	str.length
end