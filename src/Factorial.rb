=begin
	*
	* Returns the factorial of the provided integer.
	*	
=end

def getFactorial(n)
	if n == 1
		return 1
	end

	return n * getFactorial(n - 1)
end

n = 0

puts "\nReturns the factorial of the provided integer."
puts "Enter a number:"
n = gets

puts "Result: #{getFactorial(n.to_i)}"