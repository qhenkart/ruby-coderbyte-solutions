def DashInsertII(num)
	num = num.to_s.split('')
	answer = []
	num.each_with_index do |x, idx|
		if x.to_i.even? && num[idx + 1].to_i.even? && num[idx+1].to_i != 0 && x.to_i != 0
			p num[idx + 1]
			answer << x + '*'
		elsif x.to_i.odd? && num[idx+1].to_i.odd?
			answer << x + '-'
		else
			answer << x
		end
	end
	answer.join('')
end

