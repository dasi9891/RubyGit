def count_words(string)

    string = string.downcase
    my_Hash = Hash.new(0) #A Hash is a dictionary-like collection of unique keys and their values and can store any data type
    array = string.scan(/\w+/) # 0 is default value so even if there is no key or value, creates a value and sets 0 to it.
    array.each { |word| my_Hash[word] +=1 } #find the key in the hash where key is a string and value is a number.
    puts my_Hash # adds one to the value to the key that matches each value. 

end

p count_words("A man, a plan, a canal -- Panama")

    # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}

p count_words "Doo bee doo bee doo"

    # => {'doo' => 3, 'bee' => 2}
