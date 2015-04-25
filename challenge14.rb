# for some reason, when submitting this solution to Coderbyte
# it returns an error for .round. All of the tests work perfectly
# in irb, I am concluding that it is a bug with coderbyte and I have
# submitted a bug report

# Also, while trying to figure out why my code didn't work on coderbyte, I learned about
# the formatting interpolation %.#f I am including a refactored (and much prettier) version
# using that interpolation.


def FormattedDivision(num1, num2)

	div 	=	num1.to_f	/	num2.to_f
	mils	=	div.to_i	/ 	1000000
	thous	=	div.to_i	%  	1000000		/ 	1000
	rest	=	div 		% 	1000
	div 	= 	div.round(4)
	rest	= 	rest.round(4)
	
	if div > 1000000
		return "#{mils},#{thous},#{rest}"
	elsif div > 1000
		return "#{thous},#{rest}"
	end
	div = div.to_s
	arr = div.partition(".")
	if arr.last.length < 4
		num = (4 - arr.last.length) + div.length
		div = div.ljust(num, '0')
	end
	div
end



def RefactoredDivision(num1, num2)

	div 	=	num1.to_f		/	num2.to_f
	mils	=	div.to_i		/ 	1000000
	thous	=	div.to_i		%  	1000000		/ 	1000
	rest	=	div 			% 	1000

	if div > 1000000
		return "#{mils},#{thous},#{"%.4f" % rest}"
	elsif div > 1000
		return "#{thous},#{"%.4f" % rest}"
	end
	"%.4f" % div
end
