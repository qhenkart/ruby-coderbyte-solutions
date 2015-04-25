def PalindromeTwo(str)
	str = str.gsub(/\W|\s/, '').downcase
	return true if str.reverse == str
	false
end