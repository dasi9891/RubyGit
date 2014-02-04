class String

	def palindrome?
		string = self.downcase.gsub(/[\W\d]/, "") #self is a string and looks through itself to check for case, words and digits.
	  string == string.reverse #reverses the string to check for palindrome
	end
end

p "A man, a plan, a canal -- Panama".palindrome? 

p "Madam, I'm Adam!".palindrome?             

p "Abracadabra".palindrome?                   


#opposite of palindrome?("foo")
#prints "foo".palindrome?

