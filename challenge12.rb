def SimpleMode(arr)
  maxnums = {}
  arr.each do |x|
  	max = 0
  	max = arr.count(x) if max < arr.count(x)
  	max == 1 ? maxnums[-1] = 1 : maxnums[x] = max unless maxnums.has_value?(max)
  end
  maxnums.sort_by{|k, v| v}.to_a.pop.shift
end

