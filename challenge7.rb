def ArithGeo(arr)
  arith = true
  geo = true
  
  (2...arr.length).each do |x| 
    if arr[x-1] - arr[x-2] != arr[x] - arr[x-1]
      arith = false
    elsif arr[x-1] / arr[x-2] != arr[x] / arr[x-1]
      geo= false
    end
  end
  
  return "Arithmetic" if arith
  return "Geometric" if geo
  return -1
  
end