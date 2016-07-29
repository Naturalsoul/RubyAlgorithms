=begin
	*
	* Converts the characters &, <, >, " (double quote), and ' (apostrophe),
	* in a string to their corresponding HTML entities.
	*	
=end

def getTranslation(str)
	if str.length < 1
		return ""
	end

	HTMLENTRIES = {
		"&" => "&amp;",
		"<" => "&lt;",
		">" => "&gt;",
		"\"" => "&quot;",
		"\'" => "&apos;"
	}

	TOCHECK = ["&", "<", ">", "\"", "\'"]

	TOCHECK.each do |h|
		str.gsub! h, HTMLENTRIES[h]
	end

	return str
end