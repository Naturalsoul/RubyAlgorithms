=begin
	*
	* A food machine has products of three types, A, B and C, which are respectively worth
	* $270, $340 and $390. The machine accepts and gives of returned $10, $50 and $100 coins.
	*	
=end

def buyFood(food, money)
	sum = (100 * money[0]) + (50 * money[1]) + (10 * money[2])
	change = Array.new(3)

	if sum < 1 || food.length < 1
		for i in 0...2
			change[i] = 0
		end

		return change
	end

	case food.upcase!
		when "A"
	end
end