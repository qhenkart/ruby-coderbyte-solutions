def LetterCount(str)
  wordcomp = {}
  str.split.each_with_index do |word, idx|
    frequencies = 0
    word.each_char do |letter|
      frequencies = word.count(letter) if frequencies < word.count(letter)
    end
    frequencies == 1 ?  wordcomp[-1] = 1 : wordcomp[word] = frequencies unless wordcomp.has_value?(frequencies)
  end
   wordcomp.sort_by{|key, value| value}.to_a.pop.shift
end
    


