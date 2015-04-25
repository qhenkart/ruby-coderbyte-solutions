def StringScramble(str1,str2)
	str1.split('').sort.combination(str2.length) { |x| return true if x == str2.split('').sort}
	false
end

#Originally I used permutation here, but some of the examples ook a VERY long time to process. 
#I switched to combination and sorted the strings instead and now the tests pass immediately