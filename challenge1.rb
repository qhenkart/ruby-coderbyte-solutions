def PrimeTime(num)
  return false if num == 1
  (2..Math.sqrt(num)).each { |x| return false if num % x == 0} 
  true         
end