def palindrome?(string)

    string = string.downcase.gsub(/[\W\d]/, "") #gsub looks through the string to look for word syntax and replaces subsequences; 
    #downcase makes everything the same case. creates a new string and assigns it to string variable
    #gsub returns a certain thing from a string. replace digits or words with nothing.  
    string.downcase == string.downcase.reverse #checking through the string whether the reverse or palindrome of the string is equivalent to the regular string. Returns boolean value. 

end

p palindrome?("A man, a plan, a canal -- Panama")  # => true

p palindrome?("Madam, I'm Adam!")                  # => true

p palindrome?("Abracadabra")                       # => false (nil is also ok)
