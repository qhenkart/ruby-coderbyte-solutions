def PrimeChecker(num)
	num.to_s.split('').permutation { |x| return 1 if is_prime?(x.join.to_i) }
	0
end

def is_prime?(num)
  return false if num == 1
  (2..Math.sqrt(num)).each { |x| return false if num % x == 0} 
  true         
end