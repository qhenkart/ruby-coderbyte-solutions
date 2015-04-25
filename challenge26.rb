def FibonacciChecker(num)
	fibs = [1,2]
	fibs << fibs.shift + fibs.last until fibs.last > num
	fibs.first == num ?  "yes" : "no"
end