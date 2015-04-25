def Division(num1,num2)
	factors1 = []
	factors2 = []
	(1..num1).each { |x| factors1 << x if num1 % x == 0 }
	(1..num2).each { |x| factors2 << x if num2 % x == 0 }
	(factors1 & factors2).max
end