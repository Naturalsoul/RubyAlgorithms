=begin
	*
	* Converts the characters &, <, >, " (double quote), and ' (apostrophe),
	* in a string to their corresponding HTML entities.
	*	
=end

HTMLENTRIES = {
		"&" => "&amp;",
		"<" => "&lt;",
		">" => "&gt;",
		"\"" => "&quot;",
		"\'" => "&apos;"
	}

TOCHECK = ["&", "<", ">", "\"", "\'"]

def getTranslation(str)
	if str.length < 1
		return ""
	end

	TOCHECK.each do |h|
		str.gsub! h, HTMLENTRIES[h]
	end

	return str
end

str = ""

puts "\nConverts the characters &, <, >, \" (double quote), and \' (apostrophe),"
puts "in a string to their corresponding HTML entities."

puts "\nEnter a sentence to translate:"
str = gets

puts "\nResult: #{getTranslation(str)}"