def glob_match(filenames, pattern) 
	
	filenames.each do |i| 
		puts File.fnmatch(pattern, i, File::FNM_DOTMATCH) #flag so that it will match a period in front of filename
		end 
	#%Q : string literal (use different chars that you would normally have to put a \ in front of to escape)
	# and treats as double quotes. allows for string interpolation like "Hello #{@name}!" 
	# %q :  acting like single quotes. the escape sequence does not work with this. 
	
	#Returns true if path matches against pattern. The pattern is not a regular expression. 
	#instead it follows rules similar to shell filename globbing.
	# Matches a certain file. fnmatch returns an array of strings
	# takes an array of filename strings and a glob pattern string and returns an array of the filenames that match the following UNIX glob rules:

#*: matches zero or more characters,

#?: marks the preceding character optional,

#[abc]: matches a, b, or c
end

glob_match(['part1.rb', 'part2.rb', 'part2.rb~', '.part3.rb.un~'], '*part*rb?*')
# ==> [“part2.rb~”, “.part3.rb.un~”]
