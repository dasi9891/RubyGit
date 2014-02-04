class Class

    def attr_accessor_with_history(attr_name) #instead of writing the getters and setters for each variable, it will 
#write both of them for the getters and setters. Creates the name and the instance variables 

        attr_name = attr_name.to_s       # make sure it's a string
        
		attr_hist_name = attr_name + '_history'
		
        attr_reader attr_name            # create the attribute's getter - ways to access different varibles, hashes, arrays, etc

        attr_reader attr_name+"_history" # create bar_history getter - setter sets different variables to different values. like private member variables in c

#getter for the history so the user doesn't change history. 

#string literal, setter 
        self.class_eval %Q{ 
		
		def #{attr_name}=(val)
		#add to history
			@#{attr_hist_name} = [nil] if @#{attr_hist_name}.nil?
			#creates empty array to store history. if the array is not equal to nil
			@#{attr_hist_name} << val #puts the value which is the history into the array
			
			#set the value itself
			@#{attr_name}=val
			
		end
		}
	end
end

 

class Foo

    attr_accessor_with_history :bar

end

f = Foo.new

f.bar = 1

f.bar = 2

p f.bar_history # => if your code works, should be [nil, 1, 2]
