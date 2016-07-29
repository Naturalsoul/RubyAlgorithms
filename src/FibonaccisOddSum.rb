=begin
	*
	* Returns the sum of all odd Fibonacci numbers up to and including the passed number
	* if it is a Fibonacci number. As an example, passing 4 to the function should returns
	* 5 because all the odd Fibonacci numbers under 4 are 1, 1, and 3.
	*
=end

def getFiboSum(inNum)
	inNum = inNum.to_i

	if inNum == 0
		return 0
	end

	fibo = [1, 1]
	sum = 0

	for i in 1...30
		fibo.push(fibo[i - 1] + fibo[i])
	end

	fibo.each do |f|
		if f < inNum && f.odd?
			sum += f
		end
	end

	return sum
end

num = 0;

puts "\n* Returns the sum of all odd Fibonacci numbers up to and including the passed number"
puts "* if it is a Fibonacci number. As an example, passing 4 to the function should returns"
puts "* 5 because all the odd Fibonacci numbers under 4 are 1, 1, and 3."

puts "\nEnter a number:"
num = gets

puts "Result: #{getFiboSum(num)}"