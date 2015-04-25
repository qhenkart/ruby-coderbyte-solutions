def PrimeMover(num)
  primes = [2]
  primer = 3
  until primes.length == num
    primes << primer if is_prime?(primer)
    primer += 2
  end
  primes.pop
end


def is_prime?(num)
	return false if num == 1
    (2..Math.sqrt(num)).each {|x| return false if num % x == 0}
    true
end
   

# This code passes all tests quickly and efficiently in irb, but seems to fail a few tests
# in coderbyte due to what I am assuming is a timeout.