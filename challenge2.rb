def RunLength(str)
  arr = []
  freq = 0
  last_word = ''
  str.split('').each do |x|
    last_word = x if last_word == ''
    if last_word == x  
      freq += 1  
    else
      arr << freq.to_s + last_word
      freq = 1
    end
    last_word = x  
  end
  arr << freq.to_s + last_word
  arr.join      
end
   