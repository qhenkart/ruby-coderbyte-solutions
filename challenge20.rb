def NumberSearch(str)
	str.gsub!(/\W/, '')
	letters = str.scan(/[A-Z]|[a-z]/)
	numbers = str.scan(/\d/)
	return 0 if numbers == []
	numbers.map! {|x| x.to_i}
	(numbers.inject(:+) / letters.length.to_f).round
end