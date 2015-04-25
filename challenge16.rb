def PermutationStep(num)
	answer = num * 10
	num.to_s.split('').permutation { |x| answer= x.join.to_i if x.join.to_i > num && x.join.to_i < answer }
	answer == num * 10 ?  -1 : answer
end