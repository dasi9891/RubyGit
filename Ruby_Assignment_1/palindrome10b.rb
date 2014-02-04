module Enumerable #provides classes with several traversal and searching methods with the ability to sort
  def palindrome? #module: collection of methods and constants
    a = self.to_a #converts inself into an array
    a == a.reverse #reverses the order of the array
  end
end

p [1,2,3,2,1].palindrome? # => true

#prints the boolean value of the reversed array. True because the array is the same backwards as it is forwards
#hashes are considered enumerables
