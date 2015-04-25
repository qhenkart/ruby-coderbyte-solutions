# I included my original solution which was so clean and beautiful. Unfortunately,
# while it passed all but one of the tests on coderbyte, I realized that it wouldn't catch erroneous brackets
# if there were an equal number of incorrect brackets. I put the second method together to solve
# that potential issue

def BracketMatcher(str)
	opening = 0; closing = 0
	str.gsub!(/[^()]/, '')
	return 0 unless str.match(/\A[(]/)
	str.each_char do |x|
		opening += 1 if x == "("
		closing += 1 if x == ")"
		return 0 if opening < closing
	end

	opening== closing ?   1 : 0
end


=begin
def BracketMatcher(str)
	str.gsub!(/[^()]/, '')
	str.length.even? ?   1 : 0
end

=end